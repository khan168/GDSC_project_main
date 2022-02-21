import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingUpBody extends StatefulWidget {
  const SingUpBody({Key? key}) : super(key: key);

  @override
  _logInSingUpBodyState createState() => _logInSingUpBodyState();
}

class _logInSingUpBodyState extends State<SingUpBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        Container(
            color: Colors.blue,
          child:
            Column(
            children:[
                Text('hii'),
                  ]
                ),
        ),
    );
  }
}
