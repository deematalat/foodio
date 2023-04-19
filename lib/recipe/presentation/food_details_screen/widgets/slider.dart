import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

Widget SliderItem (dynamic item) {
  if (item['type'] == 'image') {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child:Image.network(
      item['url'],
      fit: BoxFit.cover,
      width: double.infinity,
    ),);
  } else if (item['type'] == 'video') {
    final videoPlayerController = VideoPlayerController.network(item['url']);
    final chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: false,
      looping: false,
      placeholder:ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
        item['poster'],
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    ),);
    return Chewie(controller: chewieController);
  } else {
    return SizedBox.shrink();
  }
}
