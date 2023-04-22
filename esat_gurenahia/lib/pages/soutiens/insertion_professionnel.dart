import 'package:esat_gurenahia/components/vignette.dart';
import 'package:flutter/material.dart';

import '../../components/content_padding.dart';
import '../../layouts/page_layout.dart';

class InsertionProfessionnel extends StatelessWidget {
  const InsertionProfessionnel({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, raints) {
      return PageLayout([
        ContentPadding(
          content: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    const Vignette(vignetteName: "Insertion professionnel.png"),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "L'insertion professionnelle",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "La chargée d'insertion professionnelle vous accompagne dans votre projet :",
            ),
            const ListTile(
              title: Text(
                  "En lien avec le travail dans les entreprises extérieures"),
            ),
            const ListTile(
              title: Text("En lien avec la formation professionnelle"),
            ),
          ],
        )
      ]);
    });
  }
}
