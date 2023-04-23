import 'package:esat_gurenahia/components/vignette.dart';
import 'package:flutter/material.dart';

import '../../components/content_padding.dart';
import '../../layouts/page_layout.dart';

class Entretien extends StatelessWidget {
  const Entretien({super.key});

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
                    const Vignette(vignetteName: "Entretien des locaux.png"),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "L'entretien des locaux",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "A en charge l'entretien des studios, des parties communes du foyer et de ses annexes, des bureaux et des ateliers. Cette équipe effectue également des prestations en entreprises extérieures.",
            ),
          ],
        )
      ]);
    });
  }
}
