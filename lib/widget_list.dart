import 'package:flutter/material.dart';
import 'package:painting_and_effects_widgets/painting_effects_widgets/backdropfilter_demo.dart';
import 'package:painting_and_effects_widgets/painting_effects_widgets/clipoval_demo.dart';
import 'package:painting_and_effects_widgets/painting_effects_widgets/clippath_demo.dart';
import 'package:painting_and_effects_widgets/painting_effects_widgets/cliprect_demo.dart';
import 'package:painting_and_effects_widgets/painting_effects_widgets/custompaint_demo.dart';
import 'package:painting_and_effects_widgets/painting_effects_widgets/decoratedbox_demo.dart';
import 'package:painting_and_effects_widgets/painting_effects_widgets/fractionaltranslation_demo.dart';
import 'package:painting_and_effects_widgets/painting_effects_widgets/opacity_demo.dart';
import 'package:painting_and_effects_widgets/painting_effects_widgets/rotatedbox_demo.dart';
import 'package:painting_and_effects_widgets/painting_effects_widgets/transform_demo.dart';

class WidgetList extends StatelessWidget {
  const WidgetList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animation Widgets")),
      body: ListView(
        children: [
          cardTile(context, "BackdropFilter", const BackDropFilterDemo()),
          cardTile(context, "ClipOval", const ClipOvalDemo()),
          cardTile(context, "ClipPath", const ClipPathDemo()),
          cardTile(context, "ClipRect", const ClipRectDemo()),
          cardTile(context, "CustomPaint", const CustomPaintDemo()),
          cardTile(context, "DecoratedBox", const DecoratedBoxDemo()),
          cardTile(context, "FractionalTranslation",
              const FractionalTranslationDemo()),
          cardTile(context, "Opacity", const OpacityDemo()),
          cardTile(context, "RotatedBox", const RotatedBoxDemo()),
          cardTile(context, "Transform", const TransformDemo()),
        ],
      ),
    );
  }

  cardTile(BuildContext context, String title, Widget w) {
    return Card(
      elevation: 8,
      shadowColor: Colors.purple,
      margin: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.amber,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [
        //       Colors.yellow,
        //       Colors.green.shade300,
        //     ],
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //   ),
        // ),
        child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => w,
              ));
            },
            title: Text(title)),
      ),
    );
  }
}
