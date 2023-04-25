// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:esat_gurenahia/common/app_routes.dart';
import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/video_atelier_view.dart';

class Ateliers extends StatelessWidget {
  const Ateliers({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return PageLayout([
        ContentPadding(
          content: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text.rich(
              TextSpan(
                children: const [
                  WidgetSpan(child: Icon(Icons.table_restaurant)),
                  TextSpan(text: ' Ateliers'),
                ],
              ),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ),
            Text(
              "L'ESAT propose diverses activités et outils adaptés qui vous permettent de développer votre potentiel au sein de l'ESAT. Des moniteurs d'atelier sont là pour vous encadrer.",
            ),
            SizedBox(height: 20),
            VideoAtelierView(),
            SizedBox(height: 20),
            LayoutBuilder(
              builder: (context, constraints) {
                return GridView.count(
                  crossAxisCount: (constraints.maxWidth / 300).floor() + 1,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: const [
                    Atelier(
                      routeName: AppRoutes.atelierMaraichage,
                      title: "L'Horticulture, le Maraîchage",
                      vignetteName: "Horticulture1.png",
                    ),
                    Atelier(
                      routeName: AppRoutes.atelierEspacesVert,
                      title: "Les Espaces verts",
                      vignetteName: "Espaces Vert.png",
                    ),
                    Atelier(
                      routeName: AppRoutes.atelierSousTraitance,
                      title: "La sous traitance",
                      vignetteName: "Sous traitance.png",
                    ),
                    Atelier(
                      routeName: AppRoutes.atelierLingerie,
                      title: "La lingerie",
                      vignetteName: "Lingerie.png",
                    ),
                    Atelier(
                      routeName: AppRoutes.atelierEntretien,
                      title: "L'entretien des locaux",
                      vignetteName: "Entretien des locaux.png",
                    ),
                    Atelier(
                      routeName: AppRoutes.atelierRestauration,
                      title: "La restauration",
                      vignetteName: "Restauration.png",
                    ),
                  ],
                );
              }
            ),
          ],
        )
      ]);
    });
  }
}

class Atelier extends StatelessWidget {
  final String routeName;
  final String vignetteName;
  final String title;

  const Atelier({
    super.key,
    required this.routeName,
    required this.vignetteName,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(routeName),
      child: Card(
        color: Get.theme.primaryColor,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: MouseRegion(
          cursor: MaterialStateMouseCursor.clickable,
          child: Stack(
            children: [
              Positioned(
                top: 8,
                right: 0,
                bottom: 0,
                left: 0,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: FractionallySizedBox(
                    heightFactor: 0.5,
                    child: Image.asset(
                      "assets/images/atelier/vignette/$vignetteName",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                top: 0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FractionallySizedBox(
                    heightFactor: 0.4,
                    child: ColoredBox(
                      color: Colors.white70,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Center(
                          child: AutoSizeText(
                            title,
                            style: Theme.of(context).textTheme.titleLarge,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
