import 'package:flutter/material.dart';

import '../../components/content_padding.dart';
import '../../components/vignette.dart';
import '../../layouts/page_layout.dart';

class Maraichage extends StatelessWidget {
  const Maraichage({super.key});

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
                    const Vignette(vignetteName: "Horticulture1.png"),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "L'Horticulture, le Maraîchage",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "Atelier « Métiers de la terre ».\nCet atelier a en charge la culture de légumes, la production végétale, la vente (légumes, plantes, jus de pommes), tout en veillant au respect environnemental.",
            ),
          ],
        )
      ]);
    });
  }
}
