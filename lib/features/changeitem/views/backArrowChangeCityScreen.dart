import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_gdsc_competion/features/homeScreenRichPoor/viewHomeScreenRichPoor.dart';

class BackArrowChangeCityScreen extends StatefulWidget {
  const BackArrowChangeCityScreen({Key? key}) : super(key: key);

  @override
  _LogInButtonState createState() => _LogInButtonState();
}

class _LogInButtonState extends State<BackArrowChangeCityScreen> {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(onPressed: () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ViewHomeScreenRichPoor()
      ));} ,
      icon:  Icon(Icons.arrow_back, color: Color(0xff4cf2c7), size: 30.0),
      label: Text(''),
    );
  }
}

