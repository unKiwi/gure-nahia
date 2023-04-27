// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../common/style.dart';

class ContentPadding extends StatelessWidget {
  List<Widget> content;

  ContentPadding({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Style.contentPadding + 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: content,
      ),
    );
  }
}
