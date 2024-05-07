import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/shortVedioScreen/bloc/short_video_bloc.dart';
import 'video_player.dart';

class VideoReelPage extends StatefulWidget {
  const VideoReelPage({super.key, required this.reels, required this.index});

  final List<String> reels;


  final int index;

  @override
  _VideoReelPageState createState() => _VideoReelPageState();
}

class _VideoReelPageState extends State<VideoReelPage> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();

    // _pageController = PageController(initialPage: widget.index);
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ShortVideoBloc>();

    return BlocBuilder<ShortVideoBloc, ShortVideoState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification scrollInfo) {
              if (scrollInfo is ScrollEndNotification &&
                  //_pageController.position.extentAfter == 0.0 &&
                  currentPage % 5 == 0  &&
                    state.hasMorePages)

              {
                 bloc.add(GetReelsApi(limit: 10,
                    page: bloc.state.currentPage + 1,
                    context: context));
              }
              return false;
            },
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              controller: _pageController,
              // itemCount: widget.reels.length,
              itemCount: state.getReelsListN.length,
              onPageChanged: (index) {
                currentPage = index;
                setState(() {

                });
              },
              itemBuilder: (context, index) {
                return
                //   Container(
                //   height: MediaQuery.of(context).size.height,
                //   width: MediaQuery.of(context).size.width,
                //   color: index % 2 == 0 ? Colors.red : Colors.blue ,
                //   child: Center(child: Text("${index}"),),
                // );




                  VideoPlayerWidget(
                  reelUrl: state.getReelsListN[index].videoSrc!,
                  isLikeStatus: state.getReelsListN[index].isLiked!,
                  likeCount: state.getReelsListN[index].totalLikes!,
                  comments: state.getReelsListN[index].comments!,
                  share: state.getReelsListN[index].share!,
                  views: state.getReelsListN[index].views!,
                  videoId: state.getReelsListN[index].sId!,
                  currentPage: currentPage,
                  name: state.getReelsListN[index].postedBy!.name!,
                  level: state.getReelsListN[index].postedBy!.level!,
                  listData: state.getReelsListN,

                );
              },
            ),
          ),
        );
      },
    );


    //   Scaffold(
    //   backgroundColor: Colors.black,
    //   body:
    //
    //
    //   PageView.builder(
    //     scrollDirection: Axis.vertical,
    //     controller: _pageController,
    //     itemCount: widget.reels.length,
    //     onPageChanged: (index) {
    //       currentPage = index;
    //       setState(() {
    //
    //       });
    //
    //     },
    //     itemBuilder: (context, index) {
    //
    //       return VideoPlayerWidget(
    //         key: Key(widget.reels[index]),
    //         reelUrl: widget.reels[index],
    //         isLikeStatus: bloc.state.getReelsListN[index].isLiked!,
    //         likeCount:bloc.state.getReelsListN[index].totalLikes! ,
    //         comments: bloc.state.getReelsListN[index].comments!,
    //         share:bloc.state.getReelsListN[index].share! ,
    //         views: bloc.state.getReelsListN[index].views!,
    //         videoId: bloc.state.getReelsListN[index].sId!,
    //         currentPage: currentPage,
    //         name: bloc.state.getReelsListN[index].postedBy!.name!,
    //         level: bloc.state.getReelsListN[index].postedBy!.level!,
    //         listData: bloc.state.getReelsListN,
    //
    //       );
    //     },
    //   ),
    // );
  }
}
