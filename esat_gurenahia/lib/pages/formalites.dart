// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:esat_gurenahia/components/content_padding.dart';
import 'package:esat_gurenahia/layouts/page_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../repository.dart';

class Formalites extends StatelessWidget {
  Formalites({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, raints) {
      return PageLayout([
        ContentPadding(content: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              "Les formalités administratives",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          GetBuilder<Repository>(builder: (c) {
            return Stepper(
              physics: ClampingScrollPhysics(),
              currentStep: c.formalitesCurrentStep,
              onStepCancel: () => c.formalitesCurrentStep--,
              onStepContinue: () => c.formalitesCurrentStep++,
              onStepTapped: (value) => c.formalitesCurrentStep = value,
              steps: [
                Step(
                  title: Text("Titre 1"),
                  content: Text(
                    "Vous devez posséder une reconnaissance de travailleur handicapé et avoir une notification d'orientation ESAT décidée par la Commission de Droits et de l'Autonomie des Personnes Handicapées (CDAPH)",
                  ),
                ),
                Step(
                  title: Text("Titre 2"),
                  content: Text(
                    "Vous devez faire une demande de stage.",
                  ),
                ),
                Step(
                  title: Text("Titre 2"),
                  content: Text(
                    "L'assistante sociale prendra contact avec vous pour programmer un entretien afin d'échanger sur votre projet.",
                  ),
                ),
                Step(
                  title: Text("Titre 2"),
                  content: Text(
                    "En fonction de celui-ci, un stage vous sera proposé.",
                  ),
                ),
                Step(
                  title: Text("Titre 2"),
                  content: Text(
                    "A l'issu de la validation des deux périodes de stages et d'une réponse favorable de la commission d'admission, vous pourrez demander à être inscrit sur la liste d'attente.",
                  ),
                ),
                Step(
                  title: Text("Titre 2"),
                  content: Text(
                    "Une place peut vous être proposée en fonction des places à l'ESAT et de votre projet professionnel.",
                  ),
                ),
                Step(
                  title: Text("Titre 2"),
                  content: Text(
                    "A votre admission, vous signerez avec l'établissement un contrat d'aide et de soutien. Ce contrat définit les droits et obligations réciproques. Il est renouvelé par tacite reconduction tous les ans.",
                  ),
                ),
                Step(
                  title: Text("Titre 2"),
                  content: Text(
                    "Au bout de 6 mois, votre projet personnalisé sera co ruit avec le moniteur d'atelier référent.",
                  ),
                ),
                Step(
                  title: Text("Titre 2"),
                  content: Text(
                    "Votre projet évoluera et sera régulièrement réévalué à votre demande ou à la demande de l'établissement.",
                  ),
                ),
              ],
            );
          }),
        ])
      ]);
    });
  }
}
