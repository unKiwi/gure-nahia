import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';

import '../style.dart';

class Lexique extends StatelessWidget {
   Lexique({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, raints) {
      return PageLayout([
        ContentPadding(
          content: [
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                "Le lexique",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
             ListTile(
              title: Text(
                "APAJH ",
                style: TextStyle(color: Style.primaryColor),
              ),
              subtitle: Text("Association Pour Adultes et Jeunes Handicapés"),
            ),
             ListTile(
              title: Text(
                "MAPHA",
                style: TextStyle(color: Style.primaryColor),
              ),
              subtitle:
                  Text("Maisons d'Accueil pour Personnes Handicapées Âgées"),
            ),
             ListTile(
              title: Text(
                "ESAT",
                style: TextStyle(color: Style.primaryColor),
              ),
              subtitle: Text("Etablissement et Service d'Aide par le Travail"),
            ),
             ListTile(
              title: Text(
                "CDAPH",
                style: TextStyle(color: Style.primaryColor),
              ),
              subtitle: Text(
                  "Commission des Droits et de l'Autonomie des Personnes Handicapées"),
            ),
             ListTile(
              title: Text(
                "CVS",
                style: TextStyle(color: Style.primaryColor),
              ),
              subtitle: Text("Conseil de la Vie Sociale"),
            ),
             ListTile(
              title: Text(
                "AAH",
                style: TextStyle(color: Style.primaryColor),
              ),
              subtitle: Text("Allocation aux Adultes Handicapés"),
            ),
             ListTile(
              title: Text(
                "MSA",
                style: TextStyle(color: Style.primaryColor),
              ),
              subtitle: Text("Mutualité Sociale Agricole"),
            ),
             ListTile(
              title: Text(
                "CAF",
                style: TextStyle(color: Style.primaryColor),
              ),
              subtitle: Text("Caisse d'Allocations Familiales"),
            ),
             ListTile(
              title: Text(
                "MDPH",
                style: TextStyle(color: Style.primaryColor),
              ),
              subtitle: Text("Maison Départementale des Personnes Handicapées"),
            ),
             ListTile(
              title: Text(
                "CESF",
                style: TextStyle(color: Style.primaryColor),
              ),
              subtitle: Text("Conseiller en Économie Sociale Familiale"),
            ),
             ListTile(
              title: Text(
                "PP",
                style: TextStyle(color: Style.primaryColor),
              ),
              subtitle: Text("Projet Professionnel"),
            ),
          ],
        )
      ]);
    });
  }
}
