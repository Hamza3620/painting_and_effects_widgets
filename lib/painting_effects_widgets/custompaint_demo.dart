import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class CustomPaintDemo extends StatefulWidget {
  const CustomPaintDemo({super.key});

  @override
  State<CustomPaintDemo> createState() => _CustomPaintDemoState();
}

class _CustomPaintDemoState extends State<CustomPaintDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CustomPaint"),
      ),
      body: CustomPaint(
        painter: Sky(),
        child: const Center(
          child: Text(
            'Sunny Day...',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}

class Sky extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    const RadialGradient gradient = RadialGradient(
      center: Alignment(0.7, -0.6),
      radius: 0.2,
      colors: <Color>[Colors.yellow, Colors.lightBlue],
      stops: <double>[0.4, 1.0],
    );
    canvas.drawRect(
      rect,
      Paint()..shader = gradient.createShader(rect),
    );
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) {
      Rect rect = Offset.zero & size;
      final double width = size.shortestSide * 0.4;
      rect = const Alignment(0.8, -0.9).inscribe(Size(width, width), rect);
      return <CustomPainterSemantics>[
        CustomPainterSemantics(
          rect: rect,
          properties: const SemanticsProperties(
            label: 'Sun',
            textDirection: TextDirection.ltr,
          ),
        ),
      ];
    };
  }

  @override
  bool shouldRepaint(Sky oldDelegate) => false;
  @override
  bool shouldRebuildSemantics(Sky oldDelegate) => false;
}
