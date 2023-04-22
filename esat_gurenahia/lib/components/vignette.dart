import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Vignette extends StatelessWidget {
  const Vignette({
    super.key,
    required this.vignetteName,
  });

  final String vignetteName;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Get.theme.primaryColor,
        ),
        child: ImageIcon(
          AssetImage(
            "assets/images/atelier/vignette/$vignetteName",
          ),
          color: const Color.fromARGB(255, 230, 230, 230),
        ),
      ),
    );
  }
}