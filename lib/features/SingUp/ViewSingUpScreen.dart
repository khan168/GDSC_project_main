import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SingUpScreen extends StatefulWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  _ViewHomeScreenState createState() => _ViewHomeScreenState();
}

class _ViewHomeScreenState extends State<SingUpScreen> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text('Sing Up Screen'),
        ),
        body: Text(''),
      );
  }
}


