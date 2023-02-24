import 'package:esat_gurenahia/common/app_routes.dart';
import 'package:esat_gurenahia/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../style.dart';

class PageLayout extends StatelessWidget {
  final List<Widget> body;

  const PageLayout(this.body, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: getAppBar(),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.close),
                  ),
                ),
              ),
              DrawerHeader(
                child: Image.asset("assets/logo_ESAT.png"),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Accueil'),
                onTap: () => Get.toNamed(AppRoutes.home),
              ),
              ListTile(
                leading: const Icon(Icons.table_restaurant),
                title: const Text('Ateliers'),
                onTap: () => Get.toNamed(AppRoutes.ateliers),
              ),
              ListTile(
                leading: const Icon(Icons.group),
                title: const Text('Accompagnement'),
                onTap: () => Get.toNamed(AppRoutes.accompagnement),
              ),
              ListTile(
                leading: const Icon(Icons.euro),
                title: const Text('Rémunération'),
                onTap: () => Get.toNamed(AppRoutes.remuneration),
              ),
              ListTile(
                leading: const Icon(Icons.balance),
                title: const Text('Vos droits'),
                onTap: () => Get.toNamed(AppRoutes.droits),
              ),
              ListTile(
                leading: const Icon(Icons.image),
                title: const Text('Galerie'),
                onTap: () => Get.toNamed(AppRoutes.galerie),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        launchUrl(Uri.parse(
                          "https://itineraires.txiktxak.fr/fr/horaires/Arbonne/arret/Gure-Nahia/1388",
                        ));
                      },
                      icon: const Icon(Icons.map),
                    ),
                  ],
                ),
              )
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
                    Get.toNamed(AppRoutes.droits);
                  },
                  child: const Text("Vos droits"),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.lexique);
                  },
                  child: const Text("Le lexique"),
                ),
              ],
            ),
          ),
          children: body,
        ),
      );
    });
  }
}

getAppBar() {
  if (Style.isBurgerAppBar) {
    return AppBar(
      title: Image.asset(
        "assets/logo_ESAT.png",
        height: 56,
      ),
    );
  }
  return AppBar(
    automaticallyImplyLeading: false,
    title: Container(
      padding: EdgeInsets.symmetric(horizontal: Style.contentPadding),
      child: Row(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.home),
              child: Image.asset(
                'assets/Logo_ESAT.png',
                height: 56,
              ),
            ),
          ),
          InkWell(
            onTap: () => Get.toNamed(AppRoutes.home),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(Icons.home),
              ),
            ),
          ),
          InkWell(
            onTap: () => Get.toNamed(AppRoutes.ateliers),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Ateliers",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Get.toNamed(AppRoutes.accompagnement),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Accompagnement",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Get.toNamed(AppRoutes.remuneration),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Rémunération",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Get.toNamed(AppRoutes.droits),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Vos Droits",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Get.toNamed(AppRoutes.galerie),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Galerie",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse(
                "https://itineraires.txiktxak.fr/fr/horaires/Arbonne/arret/Gure-Nahia/1388",
              ));
            },
            icon: const Icon(Icons.map),
          ),
        ],
      ),
    ),
  );
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