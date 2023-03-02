import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';

class Quotidien extends StatelessWidget {
  const Quotidien({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return PageLayout([
        ContentPadding(content: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              "Votre quotidien à l'ESAT",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Text(
            "Les horaires de travail",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const ListTile(
            title: Text("du lundi au jeudi de 08h45 à 17h00"),
          ),
          const ListTile(
            title: Text("du lundi au jeudi de 08h45 à 17h00"),
          ),
          const Text(
              "Vos congés annuels sont positionnés sur les périodes de fermeture de l'ESAT (5 semaines)"),
          const SizedBox(height: 20),
          const AspectRatio(
            aspectRatio: 3,
            child: ColoredBox(
              color: Colors.black,
              child: Center(
                child: Text("Frise / tableau explicatif ?", style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
        ]),
      ]);
    });
  }
}
