import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:shortbit/shortVedioScreen/bloc/short_video_bloc.dart';

import 'component/cache_config.dart';
import 'component/reel_service.dart';
import 'component/video_page.dart';

class ShortVedioScreen extends StatefulWidget {
  const ShortVedioScreen({super.key});

  @override
  State<ShortVedioScreen> createState() => _ShortVedioScreenState();
}

class _ShortVedioScreenState extends State<ShortVedioScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

   }



  @override
  Widget build(BuildContext context) {

    // ReelService().getVideosFromApI(context: context);
    final bloc=context.read<ShortVideoBloc>();


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      VideoReelPage(
        index: 0, // if you want to go to any specific index
        // reels:bloc.state.reelsList,
         reels: bloc.state.getReelsListN
             .map((e) => e.videoSrc) // Transform to list of String?
             .where((src) => src != null) // Remove null values
             .cast<String>() // Cast to non-nullable String
             .toList(),


      ),
    );
  }



}

