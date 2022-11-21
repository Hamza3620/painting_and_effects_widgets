import 'package:flutter/material.dart';

class RotatedBoxDemo extends StatefulWidget {
  const RotatedBoxDemo({super.key});

  @override
  State<RotatedBoxDemo> createState() => _RotatedBoxDemoState();
}

class _RotatedBoxDemoState extends State<RotatedBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RotatedBox"),
      ),
      body: const Center(
        child: RotatedBox(
          quarterTurns: 3,
          child: Text(
            'Hello World!',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}
