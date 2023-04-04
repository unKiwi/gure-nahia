import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../style.dart';

class Accueil extends StatelessWidget {
   Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, raints) {
      return PageLayout([
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Style.contentPadding + 8),
          child: Padding(
            padding:  EdgeInsets.only(top: 20, bottom: 20, left: 10),
            child: Text(
              "Bienvenue sur le livret d'accueil de l'ESAT Gure Nahia",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        // AccueilCarousel(),
         SizedBox(height: 20),
        ContentPadding(content:  [ ///////////////////// pb de padding
          Text(
            "L'ESAT a été créé en 1970 et possède une autorisation pour 180 ETP (Equivalent Temps Plein)",
          ),
          SizedBox(height: 20),
          Text(
            "Il est géré par l'Association APAJH Côte Basque - Sud des Landes, association loi 1901, créée en 1963.\nElle a pour objet de veiller au respect, à la dignité et à la pleine citoyenneté des personnes en situation de handicap.\nElle œuvre pour leur complet épanouissement et leur meilleure intégration à toute forme de vie sociale et professionnelle.",
          ),
          SizedBox(height: 20),
          Text(
            "A votre arrivée, une équipe pluridisciplinaire est présente pour vous accueillir.\nElle vous accompagnera également tout au long de votre parcours.\nUn travail adapté et encadré ainsi qu'un accompagnement médico social vont vous être proposé pour favoriser votre insertion.",
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
              "on retrouve les huit ateliers de sous-traitance, un atelier lingerie, un atelier entretien des locaux, un atelier restauration.\nAinsi que les bureaux administratifs, les locaux de l'équipe pluridisciplinaire et le foyer d'hébergement",
            ),
          ),
        ]),
         SizedBox(height: 20),
        ColoredBox(
          color:  Color(0xFF9BC2FF),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Style.contentPadding + 8, vertical: 20),
            child:  ListTile(
              title: Text("LE REGLEMENT DE FONCTIONNEMENT"),
              subtitle: Text(
                "Vous devez respecter le règlement de fonctionnement de l'ESAT.\nIl vous sera fourni lors de la signature de votre contrat d'aide et de soutien.",
              ),
            ),
          ),
        ),
      ]);
    });
  }
}

class AccueilCarousel extends StatelessWidget {
  final List<String> images = [
    "assets/images/carousel/global_view.jpeg",
    "assets/images/carousel/facade.jpeg",
    "assets/images/carousel/interieur.jpeg",
    "assets/images/carousel/serre.jpeg",
    "assets/images/carousel/fleure.jpeg",
  ];

  AccueilCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   height: 500,
    //   child: InfiniteCarousel.builder(
    //     itemCount: images.length,
    //     itemExtent: 350,
    //     center: true,
    //     anchor: 0.0,
    //     velocityFactor: 0.2,
    //     onIndexChanged: (index) {},
    //     controller: InfiniteScrollController(),
    //     axisDirection: Axis.horizontal,
    //     loop: true,
    //     itemBuilder: (context, itemIndex, realIndex) {
    //       return Container(
    //         color: Colors.amber,
    //         child: Image.asset(
    //           images[itemIndex],
    //         ),
    //       );
    //     },
    //     scrollBehavior: ScrollConfiguration.of(context).copyWith(
    //       dragDevices: {
    //         // Allows to swipe in web browsers
    //         PointerDeviceKind.touch,
    //         PointerDeviceKind.mouse
    //       },
    //     ),
    //   ),
    // );
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
        height: 300,
      ),
    );
  }
}
