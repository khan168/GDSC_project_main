import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_gdsc_competion/features/changeCity/views/ViewHeaderSearchCity.dart';
import 'package:google_gdsc_competion/features/changeCity/views/ViewSearchCityBody.dart';


class ViewChangeCity extends StatefulWidget {
  const ViewChangeCity({Key? key}) : super(key: key);

  @override
  _ViewHomeScreenState createState() => _ViewHomeScreenState();
}

class _ViewHomeScreenState extends State<ViewChangeCity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your city'),
      ),
      body:
      SafeArea(
        child: Column(
          children: [
            ViewHeaderSearchCity(),
            ViewSearchCityBody(),
          ],
        ),
      ),
    );
  }
}



