import 'package:flutter/material.dart';

import '../../components/content_padding.dart';
import '../../components/my_grid.dart';
import '../../components/vignette.dart';
import '../../layouts/page_layout.dart';

class EspacesVert extends StatelessWidget {
  const EspacesVert({super.key});

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
                    const Vignette(vignetteName: "Espaces Vert.png"),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Les Espaces verts",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "4 équipes sont en charge d'entretenir les parcs et jardins des 2 sites, de particuliers, d'entreprises, campings.",
            ),
            const SizedBox(height: 20),
            const MyGrid([
              "camion.jpg",
              "camion2.jpg",
              "camion3.jpg",
              "camion4.jpg",
              "camion5.jpg",
            ]),
          ],
        )
      ]);
    });
  }
}
