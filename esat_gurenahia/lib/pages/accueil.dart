// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';

import '../style.dart';

class Accueil extends StatelessWidget {
  Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return PageLayout([
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Style.contentPadding + 8),
          child: Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 10),
            child: Text(
              "Bienvenue sur le livret d'accueil de l'ESAT Gure Nahia",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        Image.asset(
          "assets/images/apajh-esat-gure-nahia.png",
          height: 400,
        ),
        SizedBox(height: 20),
        ContentPadding(content: [
          ///////////////////// pb de padding
          Text(
            "L'ESAT a été créé en 1970 et possède une autorisation pour 180 ETP (Equivalent Temps Plein)",
          ),
          SizedBox(height: 20),
          Text(
            "Il est géré par l'Association APAJH Côte Basque - Sud des Landes, association loi 1901, créée en 1963.\nElle a pour objet de veiller au respect, à la dignité et à la pleine citoyenneté des personnes en situation de handicap.\nElle œuvre pour leur complet épanouissement et leur meilleure intégration à toute forme de vie sociale et professionnelle.",
          ),
          SizedBox(height: 20),
          Text(
            "A votre arrivée, une équipe pluridisciplinaire est présente pour vous accueillir.\nElle vous accompagnera également tout au long de votre parcours.\nUn travail adapté et encadré ainsi qu'un accompagnement médico social vont vous être proposé pour favoriser votre insertion.",
          ),
          SizedBox(height: 20),
          Text("Gure Nahia se déploie sur 2 sites :"),
          ListTile(
            title: Text("Le site de Pémartin"),
            subtitle: Text(
              "on retrouve le siège de l'association APAJH Côte Basque Sud des Landes, l'Atelier Métiers de la terre, les quatre ateliers Espaces Verts",
            ),
          ),
          ListTile(
            title: Text("Le site dit Gure Nahia"),
            subtitle: Text(
              "on retrouve les huit ateliers de sous-traitance, un atelier lingerie, un atelier entretien des locaux, un atelier restauration.\nAinsi que les bureaux administratifs, les locaux de l'équipe pluridisciplinaire et le foyer d'hébergement",
            ),
          ),
        ]),
        SizedBox(height: 20),
        ColoredBox(
          color: Color(0xFF9BC2FF),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Style.contentPadding + 8, vertical: 20),
            child: ListTile(
              title: Text("LE REGLEMENT DE FONCTIONNEMENT"),
              subtitle: Text(
                "Vous devez respecter le règlement de fonctionnement de l'ESAT.\nIl vous sera fourni lors de la signature de votre contrat d'aide et de soutien.",
              ),
            ),
          ),
        ),
      ]);
    });
  }
}
