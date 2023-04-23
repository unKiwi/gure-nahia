import 'package:flutter/material.dart';

import '../../components/content_padding.dart';
import '../../components/vignette.dart';
import '../../layouts/page_layout.dart';

class SousTraitance extends StatelessWidget {
  const SousTraitance({super.key});

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
                    const Vignette(vignetteName: "Sous traitance.png"),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "La sous traitance",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "Divers travaux sont réalisés au sein de ces ateliers pour des entreprises extérieures en majorité locales (étiquetage, conditionnement, mailing, façonnage).",
            ),
          ],
        )
      ]);
    });
  }
}
