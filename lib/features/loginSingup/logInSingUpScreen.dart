import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_gdsc_competion/features/logInSingUp/views/logInSingUpBody.dart';


class LogInSingUpScreen extends StatefulWidget {
  const LogInSingUpScreen({Key? key}) : super(key: key);

  @override
  _ViewHomeScreenState createState() => _ViewHomeScreenState();
}

class _ViewHomeScreenState extends State<LogInSingUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sing Up Screen'),
      ),
      body: LogInSingUpBody(),
    );
  }
}

