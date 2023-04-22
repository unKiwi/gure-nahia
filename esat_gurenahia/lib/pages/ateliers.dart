// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/components/video/video_view.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';

class Ateliers extends StatelessWidget {
  const Ateliers({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, raints) {
      return PageLayout([
        ContentPadding(
          content: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                "Les ateliers",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Text(
              "L'ESAT propose diverses activités et outils adaptés qui vous permettent de développer votre potentiel au sein de l'ESAT. Des moniteurs d'atelier sont là pour vous encadrer.",
            ),
            SizedBox(height: 20),
            VideoView(),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20, left: 10),
              child: Text(
                "L'Horticulture, le Maraîchage",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Text(
              "Atelier « Métiers de la terre ».\nCet atelier a en charge la culture de légumes, la production végétale, la vente (légumes, plantes, jus de pommes), tout en veillant au respect environnemental.",
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20, left: 10),
              child: Text(
                "Les Espaces verts",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Text(
              "4 équipes sont en charge d'entretenir les parcs et jardins des 2 sites, de particuliers, d'entreprises, campings.",
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20, left: 10),
              child: Text(
                "Sous traitance",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Text(
              "Divers travaux sont réalisés au sein de ces ateliers pour des entreprises extérieures en majorité locales (étiquetage, conditionnement, mailing, façonnage).",
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20, left: 10),
              child: Text(
                "La lingerie",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Text(
              "S'occupe de l'entretien du linge des résidents du foyer, d'associations sportives, et du repassage du linge de clientèle extérieure.",
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20, left: 10),
              child: Text(
                "L'entretien des locaux",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Text(
              "A en charge l'entretien des studios, des parties communes du foyer et de ses annexes, des bureaux et des ateliers. Cette équipe effectue également des prestations en entreprises extérieures.",
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20, left: 10),
              child: Text(
                "La restauration",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Text(
              "Cet atelier élabore tous les repas pour l'ensemble des usagers et du personnel tout en prenant en charge la réception des marchandises, la légumerie, la conception des menus.",
            ),
          ],
        )
      ]);
    });
  }
}
