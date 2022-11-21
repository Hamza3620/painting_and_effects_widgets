import 'package:flutter/material.dart';

class FractionalTranslationDemo extends StatefulWidget {
  const FractionalTranslationDemo({super.key});

  @override
  State<FractionalTranslationDemo> createState() =>
      _FractionalTranslationDemoState();
}

class _FractionalTranslationDemoState extends State<FractionalTranslationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FractionalTranslation"),
      ),
      body: Center(
        child: Container(
          color: Colors.black26,
          child: const FractionalTranslation(
            translation: Offset(0.5, 1),
            child: Text('Woolha.com',
                style: TextStyle(color: Colors.teal, fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
