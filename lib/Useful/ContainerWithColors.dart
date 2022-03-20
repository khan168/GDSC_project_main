import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerColors extends StatelessWidget {
  const ContainerColors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

        width: double.infinity,
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        colors: [
        Colors.blue.shade900,
        Colors.blue.shade500,
        Colors.blue.shade400,
        ]
      )
    ),
    );
  }
}
