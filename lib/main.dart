import 'package:flutter/material.dart';
import 'controller.dart';

void main() => runApp(const _MyApp());

class _MyApp extends StatefulWidget {
  const _MyApp({Key? key}) : super(key: key);

  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  String _textPhrases = 'FTW: For the win';

  void _textHandler() {
    setState(() {
      _textPhrases = 'CYA: See ya';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Change Text'),
          ),
          body: TextController(
            textPhrase: _textPhrases,
            textHandler: () {
              _textHandler();
            },
          )),
    );
  }
}
