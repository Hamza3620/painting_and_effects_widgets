import 'package:flutter/material.dart';

class DecoratedBoxDemo extends StatefulWidget {
  const DecoratedBoxDemo({super.key});

  @override
  State<DecoratedBoxDemo> createState() => _DecoratedBoxDemoState();
}

class _DecoratedBoxDemoState extends State<DecoratedBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DecoratedBox"),
      ),
      body: const DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(-0.5, -0.6),
            radius: 0.15,
            colors: <Color>[
              Color(0xFFEEEEEE),
              Color(0xFF111133),
            ],
            stops: <double>[0.9, 1.0],
          ),
        ),
        child: Center(
          child: FlutterLogo(
            size: 150,
          ),
        ),
      ),
    );
  }
}
