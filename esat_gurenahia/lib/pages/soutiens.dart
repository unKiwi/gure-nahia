import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';

class Soutiens extends StatelessWidget {
  const Soutiens({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return PageLayout([
        ContentPadding(content: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              "Les soutiens",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Text(
            "L'ESAT vous accompagne dans votre parcours professionnel et met en œuvre différents soutiens en lien avec votre projet personnalisé. Ils sont proposés durant le temps de travail.",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20, left: 10),
            child: Text(
              "Le soutien professionnel",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Text(
            "Il est dispensé par le moniteur d'atelier. Il vous apporte une aide par le travail par un accompagnement personnalisé et par la mise à disposition, dès que nécessaire, de supports techniques adaptés.",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20, left: 10),
            child: Text(
              "Le soutien pédagogique",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Text(
            "Est mis en place par la Conseillère en Economie Sociale Familiale qui se met en lien avec le moniteur d'atelier pour vous apporter une aide pédagogique dans l'acquisition de nouvelles compétences ou de maintien des acquis. Il vient en complément du soutien professionnel.",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20, left: 10),
            child: Text(
              "L'insertion professionnelle",
              style: Theme.of(context).textTheme.titleLarge,
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
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20, left: 10),
            child: Text(
              "Le soutien psychologique",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Text(
            "Une psychologue vous propose un espace de parole et un accompagnement thérapeutique adapté à vos besoins.\n\nElle fait le lien avec les familles, les équipes éducatives, techniques et les partenaires extérieurs.\n\nElle propose également des groupes de paroles en fonction des problématiques rencontrées.",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20, left: 10),
            child: Text(
              "Le soutien social",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Text(
            "Une assistante sociale vous accueille, vous écoute et vous accompagne dans les démarches administratives liées au travail et à votre projet professionnel.\n\nElle vous apporte un soutien dans votre projet de vie en collaboration avec l'équipe.\n\nElle est en lien avec les familles, les représentants légaux et les partenaires extérieurs.",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20, left: 10),
            child: Text(
              "Le soutien médical",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Text(
            "Un médecin psychiatre et une infirmière sont à votre disposition à l'ESAT concernant votre problématique de santé. Ils sont en lien avec les professionnels de santé qui vous suivent à l'extérieur.",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20, left: 10),
            child: Text(
              "Les soutiens liés à l'épanouissement personnel",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Text(
            "la psychomotricité, le chant ...",
          ),
        ]),
      ]);
    });
  }
}
