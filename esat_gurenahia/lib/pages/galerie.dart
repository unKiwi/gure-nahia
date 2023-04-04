import 'package:esat_gurenahia/common/app_routes.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/content_padding.dart';

class Galerie extends StatelessWidget {
  final List<String> imageNames = [
    '_MG_1728.JPG',
    'camion4.jpg',
    'atelier etiquette.jpg',
    'camion5.JPG',
    'atelieraneau2.png',
    'cartonteeshirt.JPG',
    'atelieranneau.JPG',
    'cuisine.JPG',
    'ateliercarton.JPG',
    'cuisine2.JPG',
    'ateliercollage.JPG',
    'etiquette.JPG',
    'atelierempilage.jpg',
    'lingeriequipe.png',
    'atelieretiquette2.JPG',
    'machine.JPG',
    'atelieretiquette3.JPG',
    'machinelaver.JPG',
    'atelieretiquette4.JPG',
    'magasin.jpg',
    'atelierpaté.JPG',
    'magasin2.JPG',
    'atelierpaté2.JPG',
    'magasinpanneau.JPG',
    'atelierpaté3.JPG',
    'panneauatelier.JPG',
    'atelierteeshirt2.jpg',
    'pilecarton.JPG',
    'atelierteeshirt3.png',
    'pileetiquette.JPG',
    'atelierteeshirt4.png',
    'plante.JPG',
    'atelierteeshirt5.JPG',
    'pommier.JPG',
    'atelierteeshirt6.png',
    'pommier2.JPG',
    'atelierteeshirtgroupe.jpg',
    'serre.jpg',
    'batiment.JPG',
    'serre2.JPG',
    'camion.jpg',
    'tablerepasssée.JPG',
    'camion2.jpg',
    'toursanneau2.JPG',
    'camion3.jpg',
    'toursanneaux.JPG'
  ];

  Galerie({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout([
      ContentPadding(
        content: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
            ),
            child: Text(
              "Les ateliers",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 100 * imageNames.length + .0,
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 1,
          mainAxisSpacing: 20,
          children: imageNames
              .map(
                (imgName) => InkWell(
                  onTap: () {
                    Get.toNamed("${AppRoutes.galerie}/$imgName");
                  },
                  child: ClipRect(
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset(
                        "assets/images/galerie/$imgName",
                        height: 100,
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    ]);
  }
}
