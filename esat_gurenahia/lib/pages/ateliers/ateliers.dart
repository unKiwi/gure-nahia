// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:esat_gurenahia/common/app_routes.dart';
import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/video/video_view.dart';
import '../../components/vignette.dart';

class Ateliers extends StatelessWidget {
  const Ateliers({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, raints) {
      return PageLayout([
        ContentPadding(
          content: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                "Les ateliers",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Text(
              "L'ESAT propose diverses activités et outils adaptés qui vous permettent de développer votre potentiel au sein de l'ESAT. Des moniteurs d'atelier sont là pour vous encadrer.",
            ),
            SizedBox(height: 20),
            VideoView(),
            SizedBox(height: 20),
            GridView.count(
              crossAxisCount: (Get.width / 550).floor() + 1,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              childAspectRatio: 4 / 3,
              children: const [
                Atelier(
                  routeName: AppRoutes.atelierMaraichage,
                  imageName: "maraichage.jpg",
                  title: "L'Horticulture, le Maraîchage",
                  vignetteName: "Horticulture1.png",
                ),
                Atelier(
                  routeName: AppRoutes.atelierEspacesVert,
                  imageName: "camion2.jpg",
                  title: "Les Espaces verts",
                  vignetteName: "Espaces Vert.png",
                ),
                Atelier(
                  routeName: AppRoutes.atelierSousTraitance,
                  imageName: "pilecarton.JPG",
                  title: "La sous traitance",
                  vignetteName: "Sous traitance.png",
                ),
                Atelier(
                  routeName: AppRoutes.atelierLingerie,
                  imageName: "machinelaver.JPG",
                  title: "La lingerie",
                  vignetteName: "Lingerie.png",
                ),
                Atelier(
                  routeName: AppRoutes.atelierEntretien,
                  imageName: "entretien.jpg",
                  title: "L'entretien des locaux",
                  vignetteName: "Entretien des locaux.png",
                ),
                Atelier(
                  routeName: AppRoutes.atelierRestauration,
                  imageName: "cuisine2.JPG",
                  title: "La restauration",
                  vignetteName: "Restauration.png",
                ),
              ],
            ),
          ],
        )
      ]);
    });
  }
}

class Atelier extends StatelessWidget {
  final String routeName;
  final String imageName;
  final String vignetteName;
  final String title;

  const Atelier({
    super.key,
    required this.routeName,
    required this.imageName,
    required this.vignetteName,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(routeName),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/atelier/image/$imageName",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              child: FractionallySizedBox(
                heightFactor: 0.3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Vignette(vignetteName: vignetteName),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: ColoredBox(
                color: Colors.white70,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
