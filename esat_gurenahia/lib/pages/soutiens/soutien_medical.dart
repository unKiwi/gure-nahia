import 'package:esat_gurenahia/components/vignette.dart';
import 'package:flutter/material.dart';

import '../../components/content_padding.dart';
import '../../layouts/page_layout.dart';

class SoutienMedical extends StatelessWidget {
  const SoutienMedical({super.key});

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
                    const Vignette(vignetteName: "Soutien medical.png"),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Le soutien médical",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
            "Un médecin psychiatre et une infirmière sont à votre disposition à l'ESAT concernant votre problématique de santé. Ils sont en lien avec les professionnels de santé qui vous suivent à l'extérieur.",
          ),
          ],
        )
      ]);
    });
  }
}
