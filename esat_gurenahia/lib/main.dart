import 'package:esat_gurenahia/pages/ateliers.dart';
import 'package:esat_gurenahia/pages/formalites.dart';
import 'package:esat_gurenahia/pages/galerie.dart';
import 'package:esat_gurenahia/pages/soutiens.dart';
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

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(Repository());

    return GetMaterialApp(
      title: "Livret d'acceuil - ESAT Gure Nahia",
      theme: Style.defaultTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.home: (context) => const Accueil(),
        AppRoutes.ateliers: (context) => const Ateliers(),
        AppRoutes.remuneration: (context) => const Remuneration(),
        AppRoutes.droits: (context) => const Droits(),
        AppRoutes.accompagnement: (context) => const Soutiens(),
        AppRoutes.formaliteAdministratives: (context) => const Formalites(),
        AppRoutes.prestations: (context) => const Prestations(),
        AppRoutes.quotidien: (context) => const Quotidien(),
        AppRoutes.lexique: (context) => const Lexique(),
        AppRoutes.galerie: (context) => const Galerie(),
      },
    );
  }
}