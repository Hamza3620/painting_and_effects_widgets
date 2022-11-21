import 'package:flutter/material.dart';

class OpacityDemo extends StatefulWidget {
  const OpacityDemo({super.key});

  @override
  State<OpacityDemo> createState() => _OpacityDemoState();
}

class _OpacityDemoState extends State<OpacityDemo> {
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opacity"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: _visible ? 1.0 : 0.0,
              child: const Text("Now you see me, now you don't!"),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _visible = !_visible;
                  });
                },
                child: const Text("Disappear!"))
          ],
        ),
      ),
    );
  }
}
