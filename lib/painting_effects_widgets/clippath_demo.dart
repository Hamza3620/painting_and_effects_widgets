import 'package:flutter/material.dart';

class ClipPathDemo extends StatefulWidget {
  const ClipPathDemo({super.key});

  @override
  State<ClipPathDemo> createState() => _ClipPathDemoState();
}

class _ClipPathDemoState extends State<ClipPathDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClipPath"),
      ),
      body: ClipPath(
        clipper: CustomClipPath(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: Colors.red,
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
