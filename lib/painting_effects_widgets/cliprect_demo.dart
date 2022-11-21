import 'package:flutter/material.dart';

class ClipRectDemo extends StatefulWidget {
  const ClipRectDemo({super.key});

  @override
  State<ClipRectDemo> createState() => _ClipRectDemoState();
}

class _ClipRectDemoState extends State<ClipRectDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClipRect"),
      ),
      body: ClipRect(
        child: Align(
          alignment: Alignment.topCenter,
          heightFactor: 0.5,
          child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRFU7U2h0umyF0P6E_yhTX45sGgPEQAbGaJ4g&usqp=CAU'),
        ),
      ),
    );
  }
}
