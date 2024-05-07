import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime_type/mime_type.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shortbit/shortVedioScreen/bloc/short_video_bloc.dart';
import 'package:shortbit/shortVedioScreen/component/reel_service.dart';
import 'package:shortbit/utils/API/end_points.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';
import 'package:shortbit/utils/custom_widgets/toast.dart';
import 'package:video_player/video_player.dart';
import '../../utils/API/api_base_helper.dart';
import '../../utils/app_colors.dart';
import '../../utils/common_methods/common_methods.dart';
import '../models/getReelsModel.dart';
import 'cache_config.dart';
import 'modalBottomSheet.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String reelUrl;
  final bool isLikeStatus;
  final int likeCount;
  final int currentPage;
  final int comments;
  final int share;
  final int views;
  final String videoId;
  final String name;
  final int level;
  final List<Data> listData;

  const VideoPlayerWidget({
    super.key,
    required this.reelUrl,
    required this.isLikeStatus,
    required this.likeCount,
    required this.comments,
    required this.share,
    required this.views,
    required this.videoId,
    required this.currentPage,
    required this.name,
    required this.level, required this.listData,
  });

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget>
    with WidgetsBindingObserver, SingleTickerProviderStateMixin {
  late VideoPlayerController _controller;
  List<bool> _likes = [];
  late AnimationController _animationController;

  int likePlus = 0;

  // AutomaticKeepAliveClientMixin
  // @override
  // bool get wantKeepAlive => true;

  @override
  void initState() {
    // likePlus = widget.likeCount;
   // viewCount = widget.views;
    //justTry();



    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );

    super.initState();
    // _likes = List.filled(widget.reelUrl.length, widget.isLikeStatus);
    //inFun();

    //WidgetsBinding.instance.addObserver(this);
    initializeController();
  }





  inFun() {
    final bloc = context.read<ShortVideoBloc>();
    bloc.add(ListFilledEvent(
        urlReels: widget.reelUrl, likeStatus: widget.isLikeStatus));

    // bloc.add(InitializeControllerEvent(
    //     urlReels:widget.reelUrl ,
    //     animationController:_animationController ,
    //     videoController: _controller));
  }

  // void _handleDoubleTap() {
  //   final bloc = context.read<ShortVideoBloc>();
  //
  //   setState(() {
  //     int index = getIndexFromUrl(widget.reelUrl);
  //     _likes[index] = !_likes[index];
  //     if (_likes[index]) {
  //       bloc.add(LikedEvent(videoId: widget.videoId));
  //
  //       likePlus++;
  //       _animationController.forward();
  //     } else {
  //       bloc.add(LikedEvent(videoId: widget.videoId));
  //       likePlus--;
  //       _animationController.reverse();
  //     }
  //   });
  //
  // }

  // int getIndexFromUrl(String url) {
  //   return widget.reelUrl.indexOf(url);
  // }

  bool _videoInitialized = false;

  initializeController() async {

    final bloc=context.read<ShortVideoBloc>();

    var fileInfo = await kCacheManager.getFileFromCache(widget.reelUrl);
    if (fileInfo == null) {
      await kCacheManager.downloadFile(widget.reelUrl);
      fileInfo = await kCacheManager.getFileFromCache(widget.reelUrl);
    }
    if (mounted) {
      _controller = VideoPlayerController.file(fileInfo!.file)
        ..initialize().then((_) {
          if(mounted)
            {
              setState(() {
                _controller.setLooping(true); // Set video to loop
                _controller.play();
                _videoInitialized = true;
              });
            }
        });
      _controller.addListener(() {
        if (_controller.value.isPlaying && !_isPlaying) {
          print("ffffff${_controller.value.isPlaying} "+"${_isPlaying}");
          // Video has started playing
          setState(() {
             _isPlaying = true;
          });

          if(_controller.value.position == Duration.zero){


              // viewCount++;
              bloc.state.getReelsListN[widget.currentPage].views=bloc.state.getReelsListN[widget.currentPage].views!+1;
            bloc.add(ViewCountEvent(videoId: widget.videoId));


          }
        }

      });
    }
  }

  onTap() {
    if (_videoInitialized) {
      setState(() {
        if (_controller.value.isPlaying) {
          _controller.pause();
          _isPlaying = false;
        } else {
          _controller.play();
          _isPlaying = true;
        }
      });
    }
  }

  bool _isPlaying = false;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      // App is in the foreground
      _controller.play();
    } else if (state == AppLifecycleState.inactive) {
      // App is partially obscured
      _controller.pause();
    } else if (state == AppLifecycleState.paused) {
      // App is in the background
      _controller.pause();
    } else if (state == AppLifecycleState.detached) {
      // App is terminated
      _controller.dispose();
    }
  }

doubleTabFun(){
  final bloc = context.read<ShortVideoBloc>();

  if(bloc.state.getReelsListN[widget.currentPage].isLiked==true){
    print("oooo ==>> ${bloc.state.getReelsListN[widget.currentPage].totalLikes}");
    print("statusbefore ==>> ${bloc.state.getReelsListN[widget.currentPage].isLiked}");

    bloc.state.getReelsListN[widget.currentPage].totalLikes=bloc.state.getReelsListN[widget.currentPage].totalLikes!-1;
    bloc.state.getReelsListN[widget.currentPage].isLiked=!bloc.state.getReelsListN[widget.currentPage].isLiked!;
    bloc.add(LikedEvent(videoId: widget.videoId));

    setState(() {

     });
    print("eeeee ==>> ${bloc.state.getReelsListN[widget.currentPage].totalLikes}");
    print("statusafter==>> ${bloc.state.getReelsListN[widget.currentPage].isLiked}");

  }else if(bloc.state.getReelsListN[widget.currentPage].isLiked==false){
    print("gggggg ==>> ${bloc.state.getReelsListN[widget.currentPage].totalLikes}");
    print("statusbefore ==>> ${bloc.state.getReelsListN[widget.currentPage].isLiked}");



    bloc.state.getReelsListN[widget.currentPage].totalLikes=bloc.state.getReelsListN[widget.currentPage].totalLikes!+1;
    bloc.state.getReelsListN[widget.currentPage].isLiked=!bloc.state.getReelsListN[widget.currentPage].isLiked!;
    bloc.add(LikedEvent(videoId: widget.videoId));

    setState(() {

    });
    print("wwwwwww ==>> ${bloc.state.getReelsListN[widget.currentPage].totalLikes}");
    print("statusafter ==>> ${bloc.state.getReelsListN[widget.currentPage].isLiked}");



  }

}

  @override
  void dispose() {
    log('disposing a controller');
    if (_controller != null && _controller.value.isInitialized) {
      _controller.dispose();
    } // Dispose of the controller when done
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  // @override
  // void dispose() {
  //   log('disposing a controller');
  //   if (mounted) {
  //     _controller.dispose();
  //   } // Dispose of the controller when done
  //   WidgetsBinding.instance.removeObserver(this);
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ShortVideoBloc>();
    // int currentIndex = getIndexFromUrl(widget.reelUrl); // Get current index


    final height = MediaQuery.of(context).size.height * 1;
    return BlocBuilder<ShortVideoBloc, ShortVideoState>(
      builder: (context, state) {
        // bool isLiked = _likes[currentIndex]; // Check if current video is liked
        //    bool isLiked = (currentIndex >= 0 && currentIndex < state.likesList.length)
        //       ? state.likesList[currentIndex]
        //       : false;

        // bool isLiked = (widget.currentPage >= 0 && widget.currentPage < state.likesList.length)
        //    ? state.likesList[widget.currentPage]
        //    : false;

        // print("issLike==>>>> $isLiked");
        return SafeArea(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              GestureDetector(
                onTap: onTap,
                // onTap: () {
                //   print("heyaa");
                //   bloc.add(OnTapEvent(videoController: _controller));
                // },

                onDoubleTap: doubleTabFun,
                //     onDoubleTap: () {
                //       bloc.add(HandleDoubleTapEvent(
                //           urlReels: widget.reelUrl,
                //           animationController: _animationController,
                //           videoIndex: widget.currentPage,
                //       videoId: widget.videoId,
                //         context: context
                //       ));
                //     },
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    !_videoInitialized
                        // when the video is not initialized you can set a thumbnail.
                        // to make it simple, I use CircularProgressIndicator
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Colors.amber,
                            ),
                          )
                        : VideoPlayer(
                            _controller,
                          ),
                    !_videoInitialized
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Colors.amber,
                            ),
                          )
                        : const SizedBox(),
                    if (!_isPlaying)
                      const Center(
                        child: Icon(
                          Icons.play_arrow,
                          size: 50.0,
                          color: Colors.white,
                        ),
                      ),
                    !_videoInitialized
                        ? const SizedBox()
                        : VideoProgressIndicator(
                            _controller,
                            allowScrubbing: true,
                            colors: const VideoProgressColors(
                              playedColor: Colors.amber,
                              bufferedColor: Colors.grey,
                              backgroundColor: Colors.white,
                            ),
                          )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.65, right: 20),
                child: Column(
                  children: [
                    AnimatedSwitcher(
                      duration: Duration(milliseconds: 300),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return ScaleTransition(scale: animation, child: child);
                      },
                      child: Icon(
                        bloc.state.getReelsListN[widget.currentPage].isLiked==true
                            ? Icons.favorite
                            : Icons.favorite_border_rounded,
                        key: ValueKey(bloc.state.getReelsListN[widget.currentPage].isLiked==true),
                        color: bloc.state.getReelsListN[widget.currentPage].isLiked==true ? Colors.red : Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                     // likePlus.toString(),
                      bloc.state.getReelsListN[widget.currentPage].totalLikes!.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        print("hello");
                        // CommentsBottomSheet();
                        bloc.add(GetCommentApi(
                            limit: 10,page: 1,
                            videoId: bloc.state.getReelsListN[widget.currentPage].sId!.toString()));
                        commentsBottomSheet(
                            context,
                            bloc.state.getReelsListN[widget.currentPage].sId!.toString(),
                        widget.currentPage
                        );
                      },
                      child: Icon(
                        Icons.comment,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                      widget.comments.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      widget.share.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 40,
                  right: 20,
                  child: InkWell(
                    onTap: () {
                      uploadReelBottomSheet(context);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.withOpacity(0.3),
                            border: Border.all(color: Colors.white, width: 1)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        )),
                  )),
              Positioned(
                  bottom: 20,
                  left: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/indianFlag.png",
                            height: 15,
                            width: 15,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 2, bottom: 2),
                                child: Text(
                                  "Lvl ${widget.level.toString()}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 2,
                                    fontSize: 12,
                                  ),
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/playIcon.png",
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            //viewCount.toString(),
                            bloc.state.getReelsListN[widget.currentPage].views!.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      )
                    ],
                  ))
            ],
          ),
        );
      },
    );
  }

  void uploadReelBottomSheet(BuildContext contextofScren) {
    showModalBottomSheet(
      context: contextofScren,
      builder: (BuildContext context) {
        final height = MediaQuery.of(context).size.height * 1;
        final width = MediaQuery.of(context).size.width * 1;
        return Container(
          color: bottomSheetColor,
          width: double.infinity,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Create',
                      style: TextStyle(
                          fontSize: height * 0.025, color: Colors.white),
                    ),
                    CustomBounce(
                        onPressed: () {
                          navPop(context: context);
                        },
                        child: Icon(
                          Icons.cancel_sharp,
                          color: Colors.white,
                          size: height * 0.038,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: bottomSheetGreyColor,
                            shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Image.asset(
                            "assets/icons/videoIcon.png",
                            height: 20,
                            width: 20,
                          ),
                        )),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Create a video',
                      style: TextStyle(
                          fontSize: height * 0.021, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              CustomBounce(
                onPressed: () {
                  _pickVideo(contextofScren,context);
                },
                child: Container(
                  color: bottomSheetColor,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: bottomSheetGreyColor,
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Image.asset(
                                "assets/icons/uploadIcon.png",
                                height: 20,
                                width: 20,
                              ),
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Upload a video',
                          style: TextStyle(
                              fontSize: height * 0.021, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  int? selectedIndex; // Add this line to maintain the selected index

  void commentsBottomSheet(BuildContext context, String postId, int currentPage) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        final height = MediaQuery.of(context).size.height * 1;
        final width = MediaQuery.of(context).size.width * 1;
        final bloc=context.read<ShortVideoBloc>();
        return BlocBuilder<ShortVideoBloc, ShortVideoState>(
      builder: (context, state) {
       return
         Stack(
           alignment: Alignment.bottomCenter,
           children: [
             Container(
             height: height*0.5,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
               // border: Border.all(color: Colors.grey)
             ),
             child:Container(
               color: bottomSheetColor,
               child: Column(
                 children: [

                   Container(height: 5,width: 45,
                     decoration: BoxDecoration(
                         color: Colors.white.withOpacity(0.6),
                         borderRadius: BorderRadius.circular(10)

                     ),
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Text("Comments",style: TextStyle(fontSize: 18,color: Colors.white),),
                   SizedBox(
                     height: 5,
                   ),
                   Divider(
                     color: Colors.grey.shade800,
                   ),

                   state.getCommentsModel==null?Center(child: CircularProgressIndicator()):

                   state.getCommentsModel!.data!.isEmpty?Text("No comments !",style: TextStyle(color: Colors.white),):


                   Expanded(
                     child: ListView.builder(
                       itemCount: state.getCommentsModel!.data!.length,
                       shrinkWrap: true,
                       itemBuilder: (context, index) {
                         var temp=state.getCommentsModel!.data![index];

                          bool isSelected = selectedIndex == index;

                         return InkWell(
                             onLongPress: () {
                               setState(() {
                                 selectedIndex = isSelected ? null : index;
                               });
                               print("Selected Index ===>>> $selectedIndex");
                               if (selectedIndex != null) {
                                 // Show options dialog
                                 showDialog(
                                   context: context,
                                   builder: (context) {
                                     return AlertDialog(
                                       title: Text('Delete Comment'),
                                       content: Text('Do you want to delete this comment?'),
                                       actions: [
                                         TextButton(
                                           child: Text('Cancel'),
                                           onPressed: () {
                                             Navigator.of(context).pop(); // Close the dialog
                                           },
                                         ),
                                         TextButton(
                                           child: Text('Delete'),
                                           onPressed: () {

                                      bloc.add(DeleteComment(
                                        context: context,
                                          deleteId: state.getCommentsModel!.data![index].sId,
                                          postId: postId),
                                      );
                                      bloc.state.getReelsListN[currentPage].comments=bloc.state.getReelsListN[currentPage].comments!-1;

                                             Navigator.of(context).pop(); // Close the dialog
                                           },
                                         ),
                                       ],
                                     );
                                   },
                                 );
                               }
                             },
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Column(
                               children: [

                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Row(children: [
                                       ClipOval(

                                           child: Image.network(temp.userId!.profileImage!,width: 30,height: 30,)

                                       ),
                                       SizedBox(
                                         width: 15,
                                       ),

                                       Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [

                                           Text(temp.userId!.name!,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14,color: Colors.white),),
                                           Text(temp.text!,style: TextStyle(fontSize: 12,color: Colors.white)),
                                         ],
                                       )
                                     ],),

                                     Text(timeAgo(temp.createdAt.toString()),style: TextStyle(fontSize: 12,color: Colors.white))

                                   ],)



                               ],
                             ),
                           ),
                         );
                       },),
                   )


                 ],
               ),
             )

         ),

       commentSection(context,postId,currentPage)
         ],);
  },
);

      },
    );
  }

  File? _selectedVideo;

  Future<void> _pickVideo(BuildContext contextofScren, BuildContext context) async {
    final pickedFile =
        await ImagePicker().pickVideo(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _selectedVideo = File(pickedFile.path);
      });
    }

    print("selected video===>> $_selectedVideo");

    // showLoaderDialog(context: contextofScren,title: "Please wait...");


    multipartWithOnlyImageApi(EndPoints.videoPost, _selectedVideo!)
        .then((value) {


      if(value['status']==true){
            CustomFlutterToast.showToast(message: value['message'].toString());
            navPop(context: contextofScren);


          }

      // ReelService().getReels(context);
      // navPop(context: context);
    });
    //  multiPartImagePatch(url: EndPoints.videoPost, image: _selectedVideo!);
  }

  //
  // Future<dynamic> multiPartImagePatch(
  //     {required String url, required File? image}) async {
  //   // debugPrint("REQUEST  FIELDS-->$file");
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   //String? tokenIdd = '';
  //   String? tokenIdd = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NWFmNjE1Y2U1ZTBjNGI4ZWFiYzQ5ZjIiLCJpYXQiOjE3MDU5OTI1Nzd9.i4yyg78HdpO4UJP9RUClXVS-OIhMoZ8gL4XeVZDM_1U';
  //
  // //  tokenIdd = _prefs.getString(tokenIdd);
  //
  //   var responseJson;
  //
  //   var request = http.MultipartRequest('POST', Uri.parse(url));
  //   debugPrint("REQUEST-->$request");
  //
  //   request.headers.addAll({'Authorization': "Bearer $tokenIdd"});
  //   String? mimetype = mime(image!.path);
  //   String mimee = mimetype!.split('/')[0];
  //   String type = mimetype!.split('/')[1];
  //
  //   request.files.add(http.MultipartFile.fromBytes(
  //       'video', image.readAsBytesSync(),
  //       contentType: MediaType(mimee, type),
  //       filename: image.path.toString().split('/').last));
  //
  //   print(request.fields);
  //   print("===>>>ll${request.files.length}");
  //   print("===>>>ll${image.path}");
  //
  //   try {
  //     var response = await request.send();
  //     var responded = await http.Response.fromStream(response);
  //     responseJson = returnResponse(responded);
  //   } on SocketException {
  //     //Get.to(() => const NoNetworkScreen());
  //   } on HttpException {
  //     throw Exception("Something went wrong");
  //   } on FormatException {
  //     throw Exception("Bad response format");
  //   }
  //   return responseJson;
  // }

  Future<dynamic> multipartWithOnlyImageApi(String url, File profileImg) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
     var token=pref.getString("token");
     String? tokenIdd =token;
    //     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NWFmNjE1Y2U1ZTBjNGI4ZWFiYzQ5ZjIiLCJpYXQiOjE3MDU5OTI1Nzd9.i4yyg78HdpO4UJP9RUClXVS-OIhMoZ8gL4XeVZDM_1U';

    // String? tokenIdd =
    //     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NWI5MmZiYWNkYTc0NmYwYTE2MzVjZWYiLCJpYXQiOjE3MDY2MzUyMDl9.OSka3ymyioEPRHOJU35fI99bJZA4N5IfHg6jMkxclc8';

    if (kDebugMode) {
      log("Url=>>>  $url");
      log("profileImage>>>  $profileImg");
      log("Token=>>  $tokenIdd");
    }

    var headers = {'Authorization': 'Bearer $tokenIdd'};

    dynamic responseJson;

    var request = await http.MultipartRequest(
      'POST',
      Uri.parse(url),
    );
    String? mimetype = mime(profileImg.path);
    String mimee = mimetype!.split('/')[0];
    String type = mimetype.split('/')[1];

    request.files.add(http.MultipartFile.fromBytes(
        "video", profileImg.readAsBytesSync(),
        contentType: MediaType(mimee, type),
        filename: profileImg.path.toString().split('/').last));

    request.headers.addAll(headers);
    //  http.StreamedResponse response = await request.send();

    try {
      var response = await request.send();
      var responded = await http.Response.fromStream(response);
      responseJson = returnResponse(responded);
    } on SocketException {
      //Get.to(() => const NoNetworkScreen());
    } on HttpException {
      throw Exception("Something went wrong");
    } on FormatException {
      throw Exception("Bad response format");
    }

    if (kDebugMode) {
      log("ApiResponse=>>> $responseJson");
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 201:
        dynamic responseJson = jsonDecode(response.body);
        //log("ApiResponse=>>>  $responseJson");
        return responseJson;
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        //log("ApiResponse=>>>  $responseJson");
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        //log("ApiResponse=>>>  $responseJson");
        return responseJson;
      case 500:
        dynamic responseJson = jsonDecode(response.body);
        //log("ApiResponse=>>>  $responseJson");
        return responseJson;

      case 403:
        dynamic responseJson = jsonDecode(response.body);
        //log("ApiResponse=>>>  $responseJson");
        return responseJson;

      default:
        throw FetchDataException(
            'Error accoured while communicating with server ' +
                response.statusCode.toString());
    }
  }
TextEditingController commentController=TextEditingController();

  Widget commentSection (BuildContext context, String postId, int currentPage,){
    final bloc =context.read<ShortVideoBloc>();

    return     Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        style: TextStyle(color: Colors.white),

        controller: commentController,

        decoration: InputDecoration(
            hintText: "Write your Comment ......",
            hintStyle: TextStyle(color: Colors.white,fontSize: 13),
            floatingLabelBehavior: FloatingLabelBehavior.always,

            isDense: true,
            filled: false,
            counterText: "",
            suffixIcon:    IconButton(
          //    icon:  Image.asset("assets/images/addyourCommentIcon.png",width: 22.0,height: 22.0,),
              icon:  Icon(Icons.send,size: 20,color: Colors.white,),
              onPressed: (){
                 print("your comment is ===>>${commentController.text}");
                 print("your postId is ===>>${postId}");
                 FocusScope.of(context).requestFocus(FocusNode());


                 bloc.add(WriteCommentAPi(postId: postId,comment: commentController.text.toString(),context: context));

                 commentController.clear();
                 bloc.state.getReelsListN[currentPage].comments=bloc.state.getReelsListN[currentPage].comments!+1;
                 // setState(() {
                 //
                 // });


              },
            ),


            fillColor:Colors.white,
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                  color: Colors.grey.shade200),

            ),
            enabledBorder: OutlineInputBorder(

              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                  color: Colors.grey),

            ),
            focusedBorder: OutlineInputBorder(

              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey,

              ),

            ),

            errorBorder: OutlineInputBorder(

                borderSide: BorderSide(
                    color: Colors.grey),

                borderRadius: BorderRadius.all(Radius.circular(5))
            ),

            border: OutlineInputBorder(

              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                  color: Colors.grey),
            )
        ),

      ),
    );

  }

  infun(){
    String timestamp = "2024-02-02T05:25:29.943Z"; // Example timestamp from your question
    String result = timeAgo(timestamp);
    print("ddddddddddddddddddddddd"+result); // Outpu
  }
  String timeAgo(String timestamp) {
    // Parse the timestamp string into a DateTime object
    DateTime dateTime = DateTime.parse(timestamp).toLocal();

    // Get the current time
    DateTime now = DateTime.now();

    // Calculate the difference
    Duration difference = now.difference(dateTime);

    // Format the output based on the duration of the difference
    if (difference.inSeconds < 60) {
      return 'just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} min ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} h ago';
    } else if (difference.inDays < 30) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays < 365) {
      return '${(difference.inDays / 30).floor()} months ago';
    } else {
      return '${(difference.inDays / 365).floor()} years ago';
    }
  }

}
