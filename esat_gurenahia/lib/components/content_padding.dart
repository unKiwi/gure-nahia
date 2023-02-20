import 'package:flutter/material.dart';

import '../style.dart';

class ContentPadding extends StatelessWidget {
  final List<Widget> content;

  const ContentPadding({super.key, required this.content});

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
