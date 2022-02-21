import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'features/logInSingUp/views/logInSingUpBody.dart';


void main() {
  runApp(MaterialApp(
    title: 'mmmmmm',
    home: FistPage(),

  ));

}
class FistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Scaffold(
            appBar: AppBar(
              title: Text('app bar'),
            ),
            body:  Center(
                child:Container(
                  child:
                    LogInSingUpBody(),
              ),
            ),
      ),
    );
  }
}
