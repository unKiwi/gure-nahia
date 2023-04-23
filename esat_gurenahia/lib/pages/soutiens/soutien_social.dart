import 'package:esat_gurenahia/components/vignette.dart';
import 'package:flutter/material.dart';

import '../../components/content_padding.dart';
import '../../layouts/page_layout.dart';

class SoutienSocial extends StatelessWidget {
  const SoutienSocial({super.key});

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
                    const Vignette(vignetteName: "Soutien social.png"),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Le soutien social",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
            "Une assistante sociale vous accueille, vous écoute et vous accompagne dans les démarches administratives liées au travail et à votre projet professionnel.\n\nElle vous apporte un soutien dans votre projet de vie en collaboration avec l'équipe.\n\nElle est en lien avec les familles, les représentants légaux et les partenaires extérieurs.",
          ),
          ],
        )
      ]);
    });
  }
}
