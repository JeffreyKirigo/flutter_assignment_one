import 'package:flutter/material.dart';

@immutable
class Phrase extends StatelessWidget {
  String textPhrase;
  Phrase({required this.textPhrase});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textPhrase,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
