import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:video_player/video_player.dart';

import '../../utils/API/HttpClient.dart';
import '../component/cache_config.dart';
import '../models/getComments.dart';
import '../models/getReelsModel.dart';

part 'short_video_event.dart';

part 'short_video_state.dart';

part 'short_video_bloc.freezed.dart';

class ShortVideoBloc extends Bloc<ShortVideoEvent, ShortVideoState> {
  ShortVideoBloc() : super(ShortVideoState()) {
    on<ShortVideoEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<LikedEvent>(likedEvent);
    on<GetReelsApi>(getReelsApi);
    on<ListFilledEvent>(listFilledEvent);
    on<HandleDoubleTapEvent>(handleDoubleTapEvent);
    on<InitializeControllerEvent>(initializeControllerEvent);
    on<OnTapEvent>(onTapEvent);
    on<ViewCountEvent>(viewCountEvent);

    ///comments
    on<GetCommentApi>(getCommentApi);
    on<WriteCommentAPi>(writeCommentAPi);
    on<DeleteComment>(deleteComment);
  }

  final _api = HttpClients();

  FutureOr<void> likedEvent(
      LikedEvent event, Emitter<ShortVideoState> emit) async {
    try {
      await _api.likeApiFun(event.videoId!).then((value) {});
    } catch (error, stackTrace) {
      log("Error in API likedEvent========>>>>>> $error");
      // Handle the error state if necessary
    }
  }

  FutureOr<void> getReelsApi(
      GetReelsApi event, Emitter<ShortVideoState> emit) async {
    await _api.getReelsApiFun(event.limit, event.page).then((value) {
      emit(state.copyWith(getReelsLoading: true));

      if (value!.data!.isEmpty) {
        emit(state.copyWith(hasMorePages: false));
      } else {
        emit(state.copyWith(
          //  getReelsModel: value,
          currentPage: event.page,
          hasMorePages: true,
        ));
      }

      log('-----event.limit,event.page ${event.limit} ${event.page}');
      List<Data> list1 = [];

      list1.addAll(state.getReelsListN);

      // emit(state.copyWith(getReelsModel: value));

      // List<Data> list = [];

      list1.addAll(value.data!);
      emit(state.copyWith(getReelsListN: list1));

      log('-------abe ${list1.length}');

      // for (int i = 0; i < state.getReelsModel!.data!.length; i++) {
      //
      //   list.add(state.getReelsModel!.data![i]);
      //
      // }
      //
      // emit(state.copyWith(getReelsListN: list));

      // List<String> reelList=[];
      // log("reelList before===>> $reelList");
      // for(int i=0;i<state.getReelsListN.length;i++){
      //
      //   reelList.add(state.getReelsListN[i].videoSrc!);
      // }
      // emit(state.copyWith(reelsList: reelList));
      //
      // log("reelList after===>>$reelList");
      final bloc = event.context.read<ShortVideoBloc>();

      for (var i = 0; i < bloc.state.getReelsListN.length; i++) {
        // for (var i = 0; i < bloc.state.reelsList.length; i++) {
        //    cacheVideos(_reels[i], i,context);
        cacheVideos(bloc.state.getReelsListN[i].videoSrc!, i, event.context,
            bloc.state.getReelsListN);
        // you can add multiple logic for to cache videos. Right now I'm caching all videos
      }

      emit(state.copyWith(getReelsLoading: true));



    }).onError((error, stackTrace) {
      log("Error in Api getReelsApi ===>>> $error");
    });
  }

  cacheVideos(
    String url,
    int i,
    BuildContext context,
    List<Data> getReelsListN,
  ) async {
    final bloc = context.read<ShortVideoBloc>();

    FileInfo? fileInfo = await kCacheManager.getFileFromCache(url);
    if (fileInfo == null) {
      log('downloading file ##------->$url##');
      await kCacheManager.downloadFile(url);
      log('downloaded file ##------->$url##');
      if (i + 1 == getReelsListN.length) {
        log('caching finished');
      }
    }
  }

  FutureOr<void> listFilledEvent(
      ListFilledEvent event, Emitter<ShortVideoState> emit) async {
    //_likes = List.filled(widget.reelUrl.length, false);
    List<bool> _likes = [];

    _likes = List.filled(event.urlReels!.length, event.likeStatus);

    emit(state.copyWith(likesList: _likes));

    log("listttt111===>> ${state.likesList}");
  }

  FutureOr<void> handleDoubleTapEvent(
      HandleDoubleTapEvent event, Emitter<ShortVideoState> emit) async {
    //   setState(() {
    //     int index = getIndexFromUrl(widget.reelUrl);
    //     _likes[index] = !_likes[index];
    //     if (_likes[index]) {
    //       bloc.add(LikedEvent(videoId: widget.videoId));
    //       likePlus++;
    //       _animationController.forward();
    //     } else {
    //       bloc.add(LikedEvent(videoId: widget.videoId));
    //       likePlus--;
    //       _animationController.reverse();
    //     }
    //   });

    int indexx = getIndexFromUrl(event.urlReels!);

    print("vedioIndex=====>>>> ${event.videoIndex!}");

    List<bool> updatedLikesListt = List<bool>.from(state.likesList);

    updatedLikesListt[event.videoIndex!] = !state.likesList[event.videoIndex!];

    emit(state.copyWith(likesList: updatedLikesListt));

    final bloc = event.context!.read<ShortVideoBloc>();

    if (state.likesList[event.videoIndex!]) {
      log("in-if");

      // likeApi(event.videoId!);
      bloc.add(LikedEvent(videoId: event.videoId!));

      event.animationController!.forward();
    } else {
      bloc.add(LikedEvent(videoId: event.videoId!));

      // likeApi(event.videoId!);

      log("in-out");

      event.animationController!.reverse();
    }
  }

  int getIndexFromUrl(String url) {
    return url.indexOf(url);
  }

  FutureOr<void> initializeControllerEvent(
      InitializeControllerEvent event, Emitter<ShortVideoState> emit) async {
    var fileInfo = await kCacheManager.getFileFromCache(event.urlReels!);
    if (fileInfo == null) {
      await kCacheManager.downloadFile(event.urlReels!);
      fileInfo = await kCacheManager.getFileFromCache(event.urlReels!);
    }

    VideoPlayerController localVideoController = event.videoController!;

    localVideoController = VideoPlayerController.file(fileInfo!.file)
      ..initialize().then((_) {
        localVideoController.setLooping(true); // Set video to loop
        localVideoController.play();

        emit(state.copyWith(videoInitialized: true));
      });
    localVideoController.addListener(() {
      if (localVideoController.value.isPlaying && !state.isPlaying) {
        // Video has started playing

        emit(state.copyWith(isPlaying: true));
      }
    });
  }

  FutureOr<void> onTapEvent(OnTapEvent event, Emitter<ShortVideoState> emit) {
    VideoPlayerController localVideoController = event.videoController!;

    print("mohnish");
    if (state.videoInitialized) {
      if (event.videoController!.value.isPlaying) {
        print("qqq");
        event.videoController!.pause();
        emit(state.copyWith(isPlaying: false));
      } else {
        print("wwww");

        event.videoController!.play();
        emit(state.copyWith(isPlaying: true));
      }
    }
  }

  FutureOr<void> viewCountEvent(
      ViewCountEvent event, Emitter<ShortVideoState> emit) async {
    print("ddddd===>>> ${event.videoId!}");

    await _api.countApi(event.videoId!).then((value) {
      print("valueOFview====>>>>>>> ${value}");
    }).onError((error, stackTrace) {
      log("Error in viewCountEvent======>>${error}");
    });
  }

  FutureOr<void> getCommentApi(
      GetCommentApi event, Emitter<ShortVideoState> emit) async {
    await _api
        .getCommentsApiFun(
            limit: event.limit!, page: event.page!, videoId: event.videoId!)
        .then((value) {
      emit(state.copyWith(commentLoading: true));

      emit(state.copyWith(getCommentsModel: value));

      emit(state.copyWith(commentLoading: false));
    }).onError((error, stackTrace) {
      log("Error in getCommentApi===>>> $error");
    });
  }

  FutureOr<void> writeCommentAPi(
      WriteCommentAPi event, Emitter<ShortVideoState> emit) async {
    final bloc = event.context!.read<ShortVideoBloc>();

    await _api.writeComment(event.postId!, event.comment!).then((value) {
      log("ghghhsdghsghd===>> $value");
      if (value['status'] == true) {
        bloc.add(GetCommentApi(
          videoId: event.postId,
          limit: 10,
          page: 1,
        ));
      }
    }).onError((error, stackTrace) {
      log("Error in writeCommentAPi===>>> ${error}");
    });
  }

  FutureOr<void> deleteComment(
      DeleteComment event, Emitter<ShortVideoState> emit) async {
    final bloc = event.context!.read<ShortVideoBloc>();

    _api.deleteComment(event.deleteId!).then((value) {
      print("deleteComment value===>>  ${value}");
      if (value['status'] == true) {
        bloc.add(GetCommentApi(
          videoId: event.postId,
          limit: 10,
          page: 1,
        ));
      }
    }).onError((error, stackTrace) {});
  }
}
