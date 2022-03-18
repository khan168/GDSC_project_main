import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_gdsc_competion/features/homeScreenRichPoor/views/bodyHomeScreenRichPoor.dart';

class ViewHomeScreenRichPoor extends StatefulWidget {
  const ViewHomeScreenRichPoor({Key? key}) : super(key: key);

  @override
  _ViewHomeScreenRichPoorState createState() => _ViewHomeScreenRichPoorState();
}

class _ViewHomeScreenRichPoorState extends State<ViewHomeScreenRichPoor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        child:
        BodyHomeScreenRichPoor(),

      ),


    );
  }
}