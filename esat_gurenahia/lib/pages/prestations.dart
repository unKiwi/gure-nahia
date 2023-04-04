import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../style.dart';

class Prestations extends StatelessWidget {
   Prestations({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, raints) {
      return PageLayout([
        ContentPadding(content: [
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              "Les prestations mises a disposition de l'usager",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ListTile(
            title:  Text(
              "Transport",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle:  Text(
                "Vous avez la possibilité de venir à l'ESAT via le réseau de transports publics, le site étant directement desservi."),
            trailing:  Icon(Icons.map),
            onTap: () {
              launchUrl(Uri.parse(
                  "https://itineraires.txiktxak.fr/fr/horaires/Arbonne/arret/Gure-Nahia/1388"));
            },
          ),
           ListTile(
            title: Text(
              "Repas",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle: Text(
                "Vous prendrez obligatoirement votre repas du midi au self. Ils seront facturés et déduit de votre rémunération."),
          ),
           ListTile(
            title: Text(
              "Vestiaire",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle: Text(
                "Il sera mis à votre disposition un vestiaire individuel qui sera sous votre entière responsabilité."),
          ),
           ListTile(
            title: Text(
              "Mutuelles",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle: Text(
                "Vous avez la possibilité d'adhérer à une assurance complémentaire santé. L'ESAT possède 2 contrats de groupe à adhésion facultative."),
          ),
           ListTile(
            title: Text(
              "Assurance responsabilité civile",
              style: TextStyle(color: Style.primaryColor),
            ),
            subtitle: Text(
                "Une assurance de Responsabilité civile est souscrite par l'ESAT pour couvrir tous les dommages que vous pourriez causer de manière involontaire dans le cadre de vos activités professionnelles."),
          ),
        ])
      ]);
    });
  }
}
