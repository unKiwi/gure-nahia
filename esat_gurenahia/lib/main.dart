import 'package:esat_gurenahia/pages/ateliers.dart';
import 'package:esat_gurenahia/pages/formalites.dart';
import 'package:esat_gurenahia/pages/soutiens.dart';
import 'package:esat_gurenahia/repository.dart';
import 'package:esat_gurenahia/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/accueil.dart';
import 'pages/lexique.dart';
import 'pages/prestations.dart';
import 'pages/quotidien.dart';
import 'pages/vos_droits.dart';

void main() {
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
        '/': (context) => const Accueil(),
        '/ateliers': (context) => const Ateliers(),
        '/soutiens': (context) => const Soutiens(),
        '/formalites-administratives': (context) => const Formalites(),
        '/prestations': (context) => const Prestations(),
        '/quotidien': (context) => const Quotidien(),
        '/vos-droits': (context) => const VosDroits(),
        '/lexique': (context) => const Lexique(),
      },
    );
  }
}