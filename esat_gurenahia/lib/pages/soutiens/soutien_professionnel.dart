import 'package:esat_gurenahia/components/vignette.dart';
import 'package:flutter/material.dart';

import '../../components/content_padding.dart';
import '../../layouts/page_layout.dart';

class SoutienProfessionnel extends StatelessWidget {
  const SoutienProfessionnel({super.key});

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
                    const Vignette(vignetteName: "Soutien professionnel.png"),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Le soutien professionnel",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "Il est dispensé par le moniteur d'atelier. Il vous apporte une aide par le travail par un accompagnement personnalisé et par la mise à disposition, dès que nécessaire, de supports techniques adaptés.",
            ),
          ],
        )
      ]);
    });
  }
}
