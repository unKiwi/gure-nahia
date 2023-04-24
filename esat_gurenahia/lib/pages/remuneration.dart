// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';

import '../components/content_padding.dart';

class Remuneration extends StatelessWidget {
  Remuneration({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return PageLayout([
        ContentPadding(content: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text.rich(
              TextSpan(
                children: const [
                  WidgetSpan(child: Icon(Icons.euro)),
                  TextSpan(text: ' Rémunération'),
                ],
              ),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Text("Vous serez rémunéré le SMIC pour un travail à temps plein."),
          Text("L'ESAT vous versera :"),
          ListTile(
            title: Text("une rémunération directe"),
          ),
          ListTile(
            title: Text("une aide au poste financée par l'Etat"),
          ),
          Text("La CAF ou la MSA vous versera :"),
          ListTile(
            title: Text("l’Allocation Adulte Handicapé"),
          ),
          ColoredBox(
            color: Color.fromRGBO(255, 209, 128, 1),
            child: ListTile(
              leading: Icon(Icons.warning),
              title: Text(
                  "Si votre contrat d'aide et de soutien est rompu, vos droits de chômage ne pourront pas être ouverts."),
            ),
          ),
        ]),
      ]);
    });
  }
}
