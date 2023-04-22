// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:esat_gurenahia/pages/ateliers/ateliers.dart';
import 'package:esat_gurenahia/pages/ateliers/entretien.dart';
import 'package:esat_gurenahia/pages/ateliers/espaces_vert.dart';
import 'package:esat_gurenahia/pages/ateliers/lingerie.dart';
import 'package:esat_gurenahia/pages/ateliers/maraichage.dart';
import 'package:esat_gurenahia/pages/ateliers/restauration.dart';
import 'package:esat_gurenahia/pages/ateliers/sous_traitance.dart';
import 'package:esat_gurenahia/pages/formalites.dart';
import 'package:esat_gurenahia/pages/galerie.dart';
import 'package:esat_gurenahia/pages/soutiens/soutien_medical.dart';
import 'package:esat_gurenahia/pages/soutiens/soutien_personnel.dart';
import 'package:esat_gurenahia/pages/soutiens/soutien_professionnel.dart';
import 'package:esat_gurenahia/pages/soutiens/soutien_social.dart';
import 'package:esat_gurenahia/pages/soutiens/soutiens.dart';
import 'package:esat_gurenahia/repository.dart';
import 'package:esat_gurenahia/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

import 'common/app_routes.dart';
import 'pages/accueil.dart';
import 'pages/lexique.dart';
import 'pages/prestations.dart';
import 'pages/quotidien.dart';
import 'pages/droits.dart';
import 'pages/remuneration.dart';
import 'pages/soutiens/insertion_professionnel.dart';
import 'pages/soutiens/soutien_pedagogique.dart';
import 'pages/soutiens/soutien_psychologique.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(Repository());

    return GetMaterialApp(
      title: "Livret d'accueil - ESAT Gure Nahia",
      theme: Style.defaultTheme,
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: AppRoutes.home,
          page: () => Accueil(),
        ),
        GetPage(
          name: AppRoutes.ateliers,
          page: () => Ateliers(),
        ),
        GetPage(
          name: AppRoutes.atelierMaraichage,
          page: () => Maraichage(),
        ),
        GetPage(
          name: AppRoutes.atelierEspacesVert,
          page: () => EspacesVert(),
        ),
        GetPage(
          name: AppRoutes.atelierLingerie,
          page: () => Lingerie(),
        ),
        GetPage(
          name: AppRoutes.atelierEntretien,
          page: () => Entretien(),
        ),
        GetPage(
          name: AppRoutes.atelierRestauration,
          page: () => Restauration(),
        ),
        GetPage(
          name: AppRoutes.atelierSousTraitance,
          page: () => SousTraitance(),
        ),
        GetPage(
          name: AppRoutes.remuneration,
          page: () => Remuneration(),
        ),
        GetPage(
          name: AppRoutes.droits,
          page: () => Droits(),
        ),
        GetPage(
          name: AppRoutes.accompagnement,
          page: () => Soutiens(),
        ),
        GetPage(
          name: AppRoutes.soutienMedical,
          page: () => SoutienMedical(),
        ),
        GetPage(
          name: AppRoutes.soutienPedagogique,
          page: () => SoutienPedagogique(),
        ),
        GetPage(
          name: AppRoutes.soutienPersonnel,
          page: () => SoutienPersonnel(),
        ),
        GetPage(
          name: AppRoutes.soutienProfessionnel,
          page: () => SoutienProfessionnel(),
        ),
        GetPage(
          name: AppRoutes.soutienPsycologique,
          page: () => SoutienPsychologique(),
        ),
        GetPage(
          name: AppRoutes.soutienSocial,
          page: () => SoutienSocial(),
        ),
        GetPage(
          name: AppRoutes.insertionProfessionnel,
          page: () => InsertionProfessionnel(),
        ),
        GetPage(
          name: AppRoutes.formaliteAdministratives,
          page: () => Formalites(),
        ),
        GetPage(
          name: AppRoutes.prestations,
          page: () => Prestations(),
        ),
        GetPage(
          name: AppRoutes.quotidien,
          page: () => Quotidien(),
        ),
        GetPage(
          name: AppRoutes.lexique,
          page: () => Lexique(),
        ),
        GetPage(
          name: AppRoutes.galerie,
          page: () => Galerie(),
        ),
      ],
    );
  }
}
