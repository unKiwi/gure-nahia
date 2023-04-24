import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCarousel extends StatelessWidget {
  final List<String> images;

  const MyCarousel(this.images, {super.key});

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
                          // Positioned(
                          //   child: IconButton(
                          //     onPressed: () {},
                          //     icon: Icon(Icons.arrow_back_ios),
                          //   ),
                          // ),
                          // Positioned(
                          //   child: IconButton(
                          //     onPressed: () {},
                          //     icon: Icon(Icons.arrow_forward_ios),
                          //   ),
                          // ),
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
