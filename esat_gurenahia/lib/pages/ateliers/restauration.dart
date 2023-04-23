import 'package:flutter/material.dart';

import '../../components/content_padding.dart';
import '../../components/vignette.dart';
import '../../layouts/page_layout.dart';

class Restauration extends StatelessWidget {
  const Restauration({super.key});

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
                    const Vignette(vignetteName: "Restauration.png"),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "La restauration",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
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
