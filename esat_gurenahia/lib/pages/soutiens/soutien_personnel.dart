import 'package:esat_gurenahia/components/vignette.dart';
import 'package:flutter/material.dart';

import '../../components/content_padding.dart';
import '../../layouts/page_layout.dart';

class SoutienPersonnel extends StatelessWidget {
  const SoutienPersonnel({super.key});

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
                    const Vignette(vignetteName: "Epanouissement personnel.png"),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Les soutiens liés à l'épanouissement personnel",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "la psychomotricité, le chant ...",
            ),
          ],
        )
      ]);
    });
  }
}
