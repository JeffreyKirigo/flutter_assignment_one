// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './text.dart';

class TextController extends StatelessWidget {
  final VoidCallback textHandler;
  final String textPhrase;

  const TextController({required this.textHandler, required this.textPhrase});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Phrase(textPhrase: textPhrase),
          ElevatedButton(
              onPressed: () => textHandler(), child: const Text('Change Text')),
        ],
      ),
    );
  }
}
