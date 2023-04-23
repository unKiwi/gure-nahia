import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:get/get.dart';

class VideoController extends GetxController {
  late VideoPlayerController videoPlayerController;
  late CustomVideoPlayerController customVideoPlayerController;

  @override
  void onInit() {
    super.onInit();

    videoPlayerController =
        VideoPlayerController.asset("assets/videos/ESAT_animation.mp4")
          ..initialize().then((value) => update());
    customVideoPlayerController = CustomVideoPlayerController(
      context: Get.context!,
      videoPlayerController: videoPlayerController,
    );
  }
}
