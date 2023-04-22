import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:esat_gurenahia/components/video/video_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoView extends StatelessWidget {
  const VideoView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VideoController>(
        init: VideoController(),
        builder: (c) {
          return CustomVideoPlayer(
              customVideoPlayerController: c.customVideoPlayerController);
        });
  }
}
