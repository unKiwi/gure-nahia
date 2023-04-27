import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyGrid extends StatelessWidget {
  final List<String> images;

  const MyGrid(this.images, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GridView.count(
        crossAxisCount: (constraints.maxWidth / 300).floor() + 1,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: images
            .map(
              (e) => Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: MouseRegion(
                  cursor: MaterialStateMouseCursor.clickable,
                  child: GestureDetector(
                    onTap: () => Get.dialog(Dialog.fullscreen(
                      child: Stack(
                        children: [
                          Center(
                            child: Hero(
                              tag: "assets/images/galerie/$e",
                              child: Image.asset(
                                "assets/images/galerie/$e",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const CloseButton(),
                        ],
                      ),
                    )),
                    child: Hero(
                      tag: "assets/images/galerie/$e",
                      child: Image.asset(
                        "assets/images/galerie/$e",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      );
    });
  }
}
