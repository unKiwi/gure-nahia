// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';

class Quotidien extends StatelessWidget {
  Quotidien({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return PageLayout([
        ContentPadding(content: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              "Votre quotidien à l'ESAT",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Text(
            "Les horaires de travail",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          ListTile(
            title: Text("du lundi au jeudi de 08h45 à 17h00"),
          ),
          ListTile(
            title: Text("du lundi au jeudi de 08h45 à 17h00"),
          ),
          Text(
              "Vos congés annuels sont positionnés sur les périodes de fermeture de l'ESAT (5 semaines)"),
        ]),
      ]);
    });
  }
}
