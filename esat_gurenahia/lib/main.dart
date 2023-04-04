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
  runApp( MyApp());
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
          page: () =>  Accueil(),
        ),
        GetPage(
          name: AppRoutes.ateliers,
          page: () =>  Ateliers(),
        ),
        GetPage(
          name: AppRoutes.remuneration,
          page: () =>  Remuneration(),
        ),
        GetPage(
          name: AppRoutes.droits,
          page: () =>  Droits(),
        ),
        GetPage(
          name: AppRoutes.accompagnement,
          page: () =>  Soutiens(),
        ),
        GetPage(
          name: AppRoutes.formaliteAdministratives,
          page: () =>  Formalites(),
        ),
        GetPage(
          name: AppRoutes.prestations,
          page: () =>  Prestations(),
        ),
        GetPage(
          name: AppRoutes.quotidien,
          page: () =>  Quotidien(),
        ),
        GetPage(
          name: AppRoutes.lexique,
          page: () =>  Lexique(),
        ),
        GetPage(
          name: AppRoutes.galerie,
          page: () =>  Galerie(),
        ),
      ],
    );
  }
}