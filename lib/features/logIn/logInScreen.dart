import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_gdsc_competion/features/logIn/views/logInBody.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _ViewHomeScreenState createState() => _ViewHomeScreenState();
}

class _ViewHomeScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogInBody(),
    );
  }
}

