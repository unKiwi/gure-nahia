import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../style.dart';

class Accueil extends StatelessWidget {
  const Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout([
      Padding(
        padding: EdgeInsets.symmetric(horizontal: Style.contentPadding + 8),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10),
          child: Text(
            "Bienvenue sur le livret d'accueil de l'ESAT Gure Nahia",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      const AccueilCarousel(),
      const SizedBox(height: 20),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: Style.contentPadding + 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "L'ESAT a été créé en 1970 et possède une autorisation pour 180 ETP (Equivalent Temps Plein)",
              
            ),
            SizedBox(height: 20),
            Text(
              "Il est géré par l'Association APAJH Côte Basque – Sud des Landes, association loi 1901, créée en 1963. Elle a pour objet de veiller au respect, à la dignité et à la pleine citoyenneté des personnes en situation de handicap. Elle œuvre pour leur complet épanouissement et leur meilleure intégration à toute forme de vie sociale et professionnelle.",
              
            ),
            SizedBox(height: 20),
            Text(
              "A votre arrivée, une équipe pluridisciplinaire est présente pour vous accueillir. Elle vous accompagnera également tout au long de votre parcours. Un travail adapté et encadré ainsi qu'un accompagnement médico social vont vous être proposé pour favoriser votre insertion.",
              
            ),
            SizedBox(height: 20),
            Text("Gure Nahia se déploie sur 2 sites :"),
            ListTile(
              title: Text("Le site de Pémartin"),
              subtitle: Text(
                "on retrouve le siège de l'association APAJH Côte Basque Sud des Landes, l'Atelier Métiers de la terre, les quatre ateliers Espaces Verts",
                
              ),
            ),
            ListTile(
              title: Text("Le site dit Gure Nahia"),
              subtitle: Text(
                "on retrouve les huit ateliers de sous-traitance, un atelier lingerie, un atelier entretien des locaux, un atelier restauration. Ainsi que les bureaux administratifs, les locaux de l'équipe pluridisciplinaire et le foyer d'hébergement",
                
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}

class AccueilCarousel extends StatelessWidget {
  const AccueilCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Image.asset("assets/images/carousel/global_view.jpeg"),
        Image.asset("assets/images/carousel/facade.jpeg"),
        Image.asset("assets/images/carousel/interieur.jpeg"),
        Image.asset("assets/images/carousel/serre.jpeg"),
        Image.asset("assets/images/carousel/fleure.jpeg"),
      ]
          .map((e) => ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: e,
              ))
          .toList(),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
    );
  }
}
