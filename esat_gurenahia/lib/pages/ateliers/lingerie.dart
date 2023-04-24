import 'package:flutter/material.dart';

import '../../components/content_padding.dart';
import '../../components/my_carousel.dart';
import '../../components/vignette.dart';
import '../../layouts/page_layout.dart';

class Lingerie extends StatelessWidget {
  const Lingerie({super.key});

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
                    const Vignette(vignetteName: "Lingerie.png"),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "La lingerie",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "S'occupe de l'entretien du linge des résidents du foyer, d'associations sportives, et du repassage du linge de clientèle extérieure.",
            ),
            const SizedBox(height: 20),
            const MyCarousel([
              "tablerepasssee.JPG",
              "machinelaver.JPG",
            ]),
          ],
        )
      ]);
    });
  }
}
