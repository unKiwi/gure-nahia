import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Droits extends StatelessWidget {
  const Droits({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return PageLayout([
        ContentPadding(content: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              "Les droits",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const ListTile(
            title: Text(
                "Les dossiers personnels sont sécurisés afin de vous garantir la confidentialité. Pour accéder à votre dossier, vous devez faire parvenir un courrier un mois à l'avance en recommandé avec accusé de réception. Le dossier constitué devra être consulté sur place et sera présenté par la Direction, ou le médecin de l'établissement si des informations médicales doivent être fournies."),
          ),
          ListTile(
            title: const Text("Médiateur"),
            subtitle: const Text("(loi 2002-2 du 02/01/2002)"),
            trailing: OutlinedButton(
              onPressed: () {
                launchUrl(Uri.parse(
                  "https://sante.gouv.fr/fichiers/bo/2002/02-01/a0010066.htm",
                ));
              },
              child: const Text("Voir la loi"),
            ),
            onTap: () {
              launchUrl(Uri.parse(
                "https://sante.gouv.fr/fichiers/bo/2002/02-01/a0010066.htm",
              ));
            },
          ),
          const SizedBox(height: 14),
          const Text(
              "En cas de réclamation, de non-respect de vos droits, vous pouvez contacter le Directeur de l'établissement ou le Président de l'Association."),
          const SizedBox(height: 8),
          const Text(
              "Par ailleurs, si vous le jugez nécessaire, vous pouvez gratuitement, vous ou votre représentant légal, sur simple demande, faire appel à un médiateur. Vous pouvez choisir ce médiateur sur la liste des Personnes Qualifiées de votre département. Ces médiateurs sont prévus pour assister et orienter toute personne en cas de désaccord avec l'établissement."),
          const SizedBox(height: 8),
          const Text(
              "La liste des personnes qualifiées est consultable sur les panneaux d'affichages dans chaque atelier."),
          const SizedBox(height: 14),
          const ListTile(
            subtitle: Text(
                "La charte de la bientraitance est consultable sur les panneaux d'affichages"),
          ),
        ])
      ]);
    });
  }
}
