import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';

import '../components/content_padding.dart';

class Remuneration extends StatelessWidget {
  const Remuneration({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return PageLayout([
        ContentPadding(content: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              "La rémunération",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Text(
              "Vous serez rémunéré le SMIC pour un travail à temps plein."),
          const Text("L'ESAT vous versera :"),
          const ListTile(
            title: Text("une rémunération directe"),
          ),
          const ListTile(
            title: Text("une aide au poste financée par l'Etat"),
          ),
          const Text("La CAF ou la MSA vous versera :"),
          const ListTile(
            title: Text("l’Allocation Adulte Handicapé"),
          ),
          const ColoredBox(
            color: Color.fromRGBO(255, 209, 128, 1),
            child: ListTile(
              leading: Icon(Icons.warning),
              title: Text("Si votre contrat d'aide et de soutien est rompu, vos droits de chômage ne pourront pas être ouverts."),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              "Un example concret",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const AspectRatio(
            aspectRatio: 16 / 9,
            child: ColoredBox(
              color: Colors.black,
              child: Center(
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 60,
                ),
              ),
            ),
          ),
        ]),
      ]);
    });
  }
}
