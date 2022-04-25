import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class Catalogimage extends StatelessWidget {
  final String image;

  const Catalogimage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .roundedSM
        .p8
        .color(MyTheme.creamColor)
        .make()
        .p8()
        .w24(context);
  }
}
