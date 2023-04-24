import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:get/get.dart';

class VideoController extends GetxController {
  late VideoPlayerController videoPlayerController;
  late CustomVideoPlayerController customVideoPlayerController;
  
  final String assetVideo;

  VideoController(this.assetVideo);

  @override
  void onInit() {
    super.onInit();

    videoPlayerController =
        VideoPlayerController.asset("assets/videos/$assetVideo")
          ..initialize().then((value) => update());
    customVideoPlayerController = CustomVideoPlayerController(
      context: Get.context!,
      videoPlayerController: videoPlayerController,
    );
  }
}
