// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';

import '../common/style.dart';

class Lexique extends StatelessWidget {
  Lexique({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return PageLayout([
        ContentPadding(
          content: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                "Le lexique",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            LayoutBuilder(builder: (context, constraints) {
              return GridView.count(
                crossAxisCount: (constraints.maxWidth / 400).floor() + 1,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                childAspectRatio: 7 / 3,
                children: const [
                  Definition(
                    sigle: "APAJH",
                    meaning: "Association Pour Adultes et Jeunes Handicapés",
                  ),
                  Definition(
                    sigle: "MAPHA",
                    meaning: "Maisons d'Accueil pour Personnes Handicapées Âgées",
                  ),
                  Definition(
                    sigle: "ESAT",
                    meaning: "Etablissement et Service d'Aide par le Travail",
                  ),
                  Definition(
                    sigle: "CDAPH",
                    meaning: "Commission des Droits et de l'Autonomie des Personnes Handicapées",
                  ),
                  Definition(
                    sigle: "CVS",
                    meaning: "Conseil de la Vie Sociale",
                  ),
                  Definition(
                    sigle: "AAH",
                    meaning: "Allocation aux Adultes Handicapés",
                  ),
                  Definition(
                    sigle: "MSA",
                    meaning: "Mutualité Sociale Agricole",
                  ),
                  Definition(
                    sigle: "CAF",
                    meaning: "Caisse d'Allocations Familiales",
                  ),
                  Definition(
                    sigle: "MDPH",
                    meaning: "Maison Départementale des Personnes Handicapées",
                  ),
                  Definition(
                    sigle: "CESF",
                    meaning: "Conseiller en Économie Sociale Familiale",
                  ),
                  Definition(
                    sigle: "PP",
                    meaning: "Projet Professionnel",
                  ),
                ],
              );
            }),
          ],
        )
      ]);
    });
  }
}

class Definition extends StatelessWidget {
  final String sigle;
  final String meaning;

  const Definition({
    super.key,
    required this.sigle,
    required this.meaning,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          sigle,
          style: TextStyle(color: Style.primaryColor),
        ),
        subtitle: Text(meaning),
      ),
    );
  }
}
