import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

class VideoAteliers extends StatefulWidget {
  const VideoAteliers({super.key});

  @override
  State<VideoAteliers> createState() => _VideoAteliersState();
}

class _VideoAteliersState extends State<VideoAteliers> {
  late VideoPlayerController videoPlayerController;
  late CustomVideoPlayerController _customVideoPlayerController;

  String videoUrl = "videos/ESAT_animation.mp4";

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset(videoUrl)
      ..initialize().then((value) => setState(() {}));
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: videoPlayerController,
    );
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomVideoPlayer(
        customVideoPlayerController: _customVideoPlayerController);
  }
}
