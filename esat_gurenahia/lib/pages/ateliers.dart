import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';

class Ateliers extends StatelessWidget {
  const Ateliers({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return PageLayout([
        ContentPadding(
          content: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                "Les ateliers",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const Text(
              "L'ESAT propose diverses activités et outils adaptés qui vous permettent de développer votre potentiel au sein de l'ESAT. Des moniteurs d'atelier sont là pour vous encadrer.",
            ),
            const SizedBox(height: 20),
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
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20, left: 10),
              child: Text(
                "L'Horticulture, le Maraîchage",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const Text(
              "Atelier « Métiers de la terre ».\nCet atelier a en charge la culture de légumes, la production végétale, la vente (légumes, plantes, jus de pommes), tout en veillant au respect environnemental.",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20, left: 10),
              child: Text(
                "Les Espaces verts",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const Text(
              "4 équipes sont en charge d'entretenir les parcs et jardins des 2 sites, de particuliers, d'entreprises, campings.",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20, left: 10),
              child: Text(
                "Les 8 ateliers de sous traitance",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const Text(
              "Divers travaux sont réalisés au sein de ces ateliers pour des entreprises extérieures en majorité locales (étiquetage, conditionnement, mailing, façonnage).",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20, left: 10),
              child: Text(
                "La lingerie",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const Text(
              "S'occupe de l'entretien du linge des résidents du foyer, d'associations sportives, et du repassage du linge de clientèle extérieure.",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20, left: 10),
              child: Text(
                "L'entretien des locaux",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const Text(
              "A en charge l'entretien des studios, des parties communes du foyer et de ses annexes, des bureaux et des ateliers. Cette équipe effectue également des prestations en entreprises extérieures.",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20, left: 10),
              child: Text(
                "La restauration",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const Text(
              "Cet atelier élabore tous les repas pour l'ensemble des usagers et du personnel tout en prenant en charge la réception des marchandises, la légumerie, la conception des menus.",
            ),
          ],
        )
      ]);
    });
  }
}
