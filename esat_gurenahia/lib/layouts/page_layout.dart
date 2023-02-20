import 'package:esat_gurenahia/repository.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:get/get.dart';

import '../style.dart';

class PageLayout extends StatelessWidget {
  final List<Widget> body;

  const PageLayout(this.body, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            Get.toNamed('/');
          },
          child: const Text("Gure Nahia"),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.zero,
              children: [
                const SizedBox(height: 60),
                InkWell(
                  onTap: () {
                    Get.back();
                    Get.toNamed('/');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            color: Colors.blueGrey[50],
                            shape: const StadiumBorder(),
                          ),
                          height: 200,
                          width: 200,
                          child: const Icon(
                            Icons.home,
                            size: 170,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Accueil",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                    Get.toNamed('/ateliers');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset(
                                "assets/images/drawer/atelier.png",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Les Ateliers",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                    Get.toNamed('/soutiens');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset(
                                "assets/images/drawer/soutien.png",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Les Soutiens",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                    Get.toNamed('/formalites-administratives');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            color: Colors.blueGrey[50],
                            shape: const StadiumBorder(),
                          ),
                          height: 200,
                          width: 200,
                          child: const Icon(
                            Icons.article_outlined,
                            size: 170,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Les Formalités Administratives",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                    Get.toNamed('/prestations');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            color: Colors.blueGrey[50],
                            shape: const StadiumBorder(),
                          ),
                          height: 200,
                          width: 200,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Prestations mises a dispositions de l'usager",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                // InkWell(
                //   onTap: () {
                //     Get.back();
                //     Get.toNamed('/quotidien');
                //   },
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(vertical: 15),
                //     child: Column(
                //       children: [
                //         Container(
                //           decoration: ShapeDecoration(
                //             color: Colors.blueGrey[50],
                //             shape: const StadiumBorder(),
                //           ),
                //           height: 200,
                //           width: 200,
                //         ),
                //         const SizedBox(height: 10),
                //         Text(
                //           "Votre Quotidien a l'ESAT",
                //           textAlign: TextAlign.center,
                //           style: Theme.of(context).textTheme.titleLarge,
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // InkWell(
                //   onTap: () {
                //     Get.back();
                //   },
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(vertical: 15),
                //     child: Column(
                //       children: [
                //         Container(
                //           decoration: const ShapeDecoration(
                //             color: Colors.greenAccent,
                //             shape: StadiumBorder(),
                //           ),
                //           height: 200,
                //           width: 200,
                //         ),
                //         const SizedBox(height: 10),
                //         Text(
                //           "Rien",
                //           style: Theme.of(context).textTheme.titleLarge,
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                const SizedBox(height: 30),
              ],
            ),
            Positioned(
              top: 10,
              left: 9,
              child: IconButton(
                splashRadius: 40,
                onPressed: () => Get.back(),
                icon: const Icon(Icons.close),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const FAB(),
      body: FooterView(
        footer: Footer(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Get.toNamed('/vos-droits');
                },
                child: const Text("Vos droits"),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed('/lexique');
                },
                child: const Text("Le lexique"),
              ),
            ],
          ),
        ),
        // flex: 1,
        children: body,
      ),
    );
  }
}

class FAB extends StatelessWidget {
  const FAB({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        const title = "Accessibilité";
        Widget content = GetBuilder<Repository>(
          builder: (c) {
            return SwitchListTile(
              title: const Text("Lecture facile"),
              value: c.isEasyReading,
              onChanged: (value) {
                c.isEasyReading = value;
                Get.changeTheme(
                  value ? Style.easyReadingTheme : Style.defaultTheme,
                );
              },
            );
          },
        );

        if (Get.width > Style.smallScreenWidth) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text(title),
              content: content,
            ),
          );
          return;
        }
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          builder: (context) => Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  content,
                ],
              ),
            ),
          ),
        );
      },
      child: const Icon(
        Icons.accessibility_new,
        size: 40,
      ),
    );
  }
}
