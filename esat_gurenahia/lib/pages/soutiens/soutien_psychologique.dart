import 'package:esat_gurenahia/components/vignette.dart';
import 'package:flutter/material.dart';

import '../../components/content_padding.dart';
import '../../layouts/page_layout.dart';

class SoutienPsychologique extends StatelessWidget {
  const SoutienPsychologique({super.key});

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
                    const Vignette(vignetteName: "Soutien psychologique.png"),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Le soutien psychologique",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "Une psychologue vous propose un espace de parole et un accompagnement thérapeutique adapté à vos besoins.\n\nElle fait le lien avec les familles, les équipes éducatives, techniques et les partenaires extérieurs.\n\nElle propose également des groupes de paroles en fonction des problématiques rencontrées.",
            ),
          ],
        )
      ]);
    });
  }
}
