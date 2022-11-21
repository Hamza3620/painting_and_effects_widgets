import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFilterDemo extends StatefulWidget {
  const BackDropFilterDemo({super.key});

  @override
  State<BackDropFilterDemo> createState() => _BackDropFilterDemoState();
}

class _BackDropFilterDemoState extends State<BackDropFilterDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BackdropFilter"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Text('0' * 10000),
          Center(
            child: ClipRect(
              // <-- clips to the 200x200 [Container] below
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5.0,
                      sigmaY: 5.0,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: 200.0,
                      height: 200.0,
                      child: const Text('Hello World'),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        await showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) => BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: AlertDialog(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                              title: const Icon(
                                Icons.warning_amber_outlined,
                                color: Colors.red,
                                size: 50,
                              ),
                              elevation: 6,
                              actionsAlignment: MainAxisAlignment.center,
                              content: const Text('BackdropFilter Sample',
                                  textAlign: TextAlign.center),
                              actions: <Widget>[
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.lightBlue)),
                                  onPressed: () async {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: const Text("Open Dialog"))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
