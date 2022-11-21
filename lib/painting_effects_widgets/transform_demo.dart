import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformDemo extends StatefulWidget {
  const TransformDemo({super.key});

  @override
  State<TransformDemo> createState() => _TransformDemoState();
}

class _TransformDemoState extends State<TransformDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transform"),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          child: Transform(
            alignment: Alignment.topRight,
            transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFFE8581C),
              child: const Text('Apartment for rent!'),
            ),
          ),
        ),
      ),
    );
  }
}
