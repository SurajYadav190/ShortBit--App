// import 'dart:developer';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_cache_manager/flutter_cache_manager.dart';
// import 'package:shortbit/shortVedioScreen/bloc/short_video_bloc.dart';
//  import 'cache_config.dart';
//
// class ReelService {
// // Here, I use some stock videos as an example.
// // But you need to make this list empty when you will call api for your reels
//
//   List<String> _reels = [
//     // 'https://assets.mixkit.co/videos/preview/mixkit-aerial-panorama-of-a-landscape-with-mountains-and-a-lake-4249-large.mp4/',
//     // 'https://assets.mixkit.co/videos/preview/mixkit-curvy-road-on-a-tree-covered-hill-41537-large.mp4',
//     // 'https://assets.mixkit.co/videos/preview/mixkit-frying-diced-bacon-in-a-skillet-43063-large.mp4',
//     // 'https://assets.mixkit.co/videos/preview/mixkit-fresh-apples-in-a-row-on-a-natural-background-42946-large.mp4',
//     // 'https://assets.mixkit.co/videos/preview/mixkit-rain-falling-on-the-water-of-a-lake-seen-up-18312-large.mp4',
//   ];
//
//
//   Future getVideosFromApI({required BuildContext context}) async {
//      // call your api here
//     // then add all links to _reels variable
//
//     final bloc=context.read<ShortVideoBloc>();
//
//         bloc.add(GetReelsApi(limit: 10,page: 1, context: context));
//
//
//     // call your api here
//     // then add all links to _reels variable
//
//     // for(int i=0;i<bloc.state.getReelsListN.length;i++){
//     //
//     //   _reels.add(bloc.state.getReelsListN[i].videoSrc!);
//     //
//     // }
//      print("ssssss");
//      // print("fffffff=== ${bloc.state.getReelsListN[0].videoSrc!}");
//     //_reels=bloc.state.reelsList;
//   print("oppppp ${_reels}");
//
//     for (var i = 0; i < _reels.length; i++) {
//    // for (var i = 0; i < bloc.state.reelsList.length; i++) {
//   //    cacheVideos(_reels[i], i,context);
//       cacheVideos(bloc.state.reelsList[i], i,context);
//       // you can add multiple logic for to cache videos. Right now I'm caching all videos
//     }
//
//   }
//
//   cacheVideos(String url, int i, BuildContext context) async {
//     final bloc = context.read<ShortVideoBloc>();
//
//     FileInfo? fileInfo = await kCacheManager.getFileFromCache(url);
//     if (fileInfo == null) {
//       log('downloading file ##------->$url##');
//       await kCacheManager.downloadFile(url);
//       log('downloaded file ##------->$url##');
//       if (i + 1 == bloc.state.reelsList.length) {
//         log('caching finished');
//       }
//     }
//   }
//
//   List<String> getReels(BuildContext context) {
//     final bloc = context.read<ShortVideoBloc>();
//   //  return _reels;
//    return bloc.state.reelsList;
//    //  return bloc.state.getReelsListN
//    //      .map((e) => e.videoSrc) // Transform to list of String?
//    //      .where((src) => src != null) // Remove null values
//    //      .cast<String>() // Cast to non-nullable String
//    //      .toList();
//   }
// }
