import 'package:flutter/material.dart';

class ClipOvalDemo extends StatefulWidget {
  const ClipOvalDemo({super.key});

  @override
  State<ClipOvalDemo> createState() => _ClipOvalDemoState();
}

class _ClipOvalDemoState extends State<ClipOvalDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ClipOval"),
        ),
        body: Center(
          child: ClipOval(
            clipper: MyClip(),
            child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRFU7U2h0umyF0P6E_yhTX45sGgPEQAbGaJ4g&usqp=CAU',
                fit: BoxFit.fill),
          ),
        ));
  }
}

class MyClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 0, 100, 100);
  }

  @override
  bool shouldReclip(oldClipper) {
    return false;
  }
}
