import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';

import '../style.dart';

class Lexique extends StatelessWidget {
  const Lexique({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout([
      ContentPadding(
        content: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              "Le lexique",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const ListTile(
            title: Text(
              "APAJH",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle: Text(
                "Association pour Adultes et Jeunes Handicapés. Elle représente 93 associations en France métropolitaine et outre-mer. C'est aussi la première association en France à considérer et accompagner tous les types de handicap"),
          ),
          const ListTile(
            title: Text(
              "MAPHA",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle: Text(
                "Maisons d'accueil pour Personnes handicapées âgées. C'est un établissement qui accueille à partir de 45 ans et sans limite d'âge supérieur, des personnes ayant une déficience intellectuelle moyenne à sévère, avançant en âge, présentant un vieillissement précoce ou âgées"),
          ),
          const ListTile(
            title: Text(
              "ESAT",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle: Text(
                "À la différence des entreprises adaptées (EA) qui emploient également du personnel non touché par le handicap, les ESAT sont réservés aux travailleurs handicapés"),
          ),
          const ListTile(
            title: Text(
              "CDAPH",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle: Text(
                "La commission des droits et de l'autonomie des personnes handicapées est une commission de la maison départementale des personnes handicapées chargée de répondre aux demandes faites par les personnes handicapées ou leurs représentants"),
          ),
          const ListTile(
            title: Text(
              "CVS",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle: Text(
                "Le conseil de la vie sociale est une instance qui vise à associer les usagers au fonctionnement des établissements sociaux et médico-sociaux"),
          ),
          const ListTile(
            title: Text(
              "AAH",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle: Text(
                "L'allocation aux adultes handicapés est une aide financière qui vous permet d'avoir un minimum de ressources"),
          ),
          const ListTile(
            title: Text(
              "MSA",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle: Text(
                "La MSA est un organisme mutualiste qui gère de façon globale la protection sociale des salariés et non salariés agricoles ainsi que leurs ayants droit et les retraités"),
          ),
          const ListTile(
            title: Text(
              "CAF",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle: Text(
                "Une caisse d'allocations familiales est un organisme chargé de verser aux particuliers des prestations financières à caractère familial ou social (prestations légales), dans des conditions déterminées par la loi"),
          ),
          const ListTile(
            title: Text(
              "MDPH",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle: Text(
                "La Maison Départementale des Personnes Handicapées est l'interlocuteur unique de toute personne souffrant de handicap, quel que soit son âge"),
          ),
          const ListTile(
            title: Text(
              "CESF",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle: Text(
                "Le conseiller en économie sociale familiale est un travailleur social qualifié dont le cœur de métier est fondé sur une expertise dans les domaines de la vie quotidienne : consommation, habitat, insertion sociale et professionnelle, alimentation- santé"),
          ),
          const ListTile(
            title: Text(
              "PP",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle: Text("Projet Professionnel"),
          ),
        ],
      )
    ]);
  }
}
