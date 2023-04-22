// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/app_routes.dart';
import '../../components/vignette.dart';

class Soutiens extends StatelessWidget {
  Soutiens({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, raints) {
      return PageLayout([
        ContentPadding(content: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              "Les soutiens",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Text(
            "L'ESAT vous accompagne dans votre parcours professionnel et met en œuvre différents soutiens en lien avec votre projet personnalisé. Ils sont proposés durant le temps de travail.",
          ),
          SizedBox(height: 20),
          GridView.count(
            crossAxisCount: (Get.width / 550).floor() + 1,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            childAspectRatio: 5 / 2,
            children: const [
              Soutien(
                routeName: AppRoutes.soutienProfessionnel,
                title: "Le soutien professionnel",
                vignetteName: "Soutien professionnel.png",
              ),
              Soutien(
                routeName: AppRoutes.soutienPedagogique,
                title: "Le soutien pédagogique",
                vignetteName: "Soutien pedagogique.png",
              ),
              Soutien(
                routeName: AppRoutes.insertionProfessionnel,
                title: "L'insertion professionnelle",
                vignetteName: "Insertion professionnel.png",
              ),
              Soutien(
                routeName: AppRoutes.soutienPsycologique,
                title: "Le soutien psychologique",
                vignetteName: "Soutien psychologique.png",
              ),
              Soutien(
                routeName: AppRoutes.soutienSocial,
                title: "Le soutien social",
                vignetteName: "Soutien social.png",
              ),
              Soutien(
                routeName: AppRoutes.soutienMedical,
                title: "Le soutien médical",
                vignetteName: "Soutien medical.png",
              ),
              Soutien(
                routeName: AppRoutes.soutienPersonnel,
                title: "Les soutiens liés à l'épanouissement personnel",
                vignetteName: "Epanouissement personnel.png",
              ),
            ],
          ),
        ]),
      ]);
    });
  }
}

class Soutien extends StatelessWidget {
  final String routeName;
  final String vignetteName;
  final String title;

  const Soutien({
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
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: [
            Positioned(
              child: FractionallySizedBox(
                heightFactor: 0.5,
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
