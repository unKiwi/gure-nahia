import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';

import '../style.dart';

class Quotidien extends StatelessWidget {
  const Quotidien({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout([
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Text(
          "Les prestations mises a disposition de l'usager",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      ListTile(
          title: const Text(
            "Transport",
            style: TextStyle(color: Style.primaryColor),
          ),
          subtitle: const Text(
              "Vous avez la possibilité de venir à l'ESAT via le réseau de transports publics, le site étant directement desservi."),
          trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.map))),
      const ListTile(
        title: Text(
          "Repas",
          style: TextStyle(color: Style.primaryColor),
        ),
        subtitle: Text(
            "Vous prendrez obligatoirement votre repas du midi au self. Ils seront facturés et déduit de votre rémunération."),
      ),
      const ListTile(
        title: Text(
          "Vestiaire",
          style: TextStyle(color: Style.primaryColor),
        ),
        subtitle: Text(
            "Il sera mis à votre disposition un vestiaire individuel qui sera sous votre entière responsabilité."),
      ),
      const ListTile(
        title: Text(
          "Mutuelles",
          style: TextStyle(color: Style.primaryColor),
        ),
        subtitle: Text(
            "Vous avez la possibilité d'adhérer à une assurance complémentaire santé. L'ESAT possède 2 contrats de groupe à adhésion facultative."),
      ),
      const ListTile(
        title: Text(
          "Assurance responsabilité civile",
          style: TextStyle(color: Style.primaryColor),
        ),
        subtitle: Text(
            "Une assurance de Responsabilité civile est souscrite par l'ESAT pour couvrir tous les dommages que vous pourriez causer de manière involontaire dans le cadre de vos activités professionnelles."),
      ),
    ]);
  }
}
