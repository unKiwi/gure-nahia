import 'package:esat_gurenahia/components/vignette.dart';
import 'package:flutter/material.dart';

import '../../components/content_padding.dart';
import '../../layouts/page_layout.dart';

class SoutienPedagogique extends StatelessWidget {
  const SoutienPedagogique({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return PageLayout([
        ContentPadding(
          content: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    const Vignette(vignetteName: "Soutien pedagogique.png"),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Le soutien pédagogique",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "Est mis en place par la Conseillère en Economie Sociale Familiale qui se met en lien avec le moniteur d'atelier pour vous apporter une aide pédagogique dans l'acquisition de nouvelles compétences ou de maintien des acquis. Il vient en complément du soutien professionnel.",
            ),
          ],
        )
      ]);
    });
  }
}
