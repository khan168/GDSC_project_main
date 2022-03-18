import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'features/changeCity/viewChangeCity.dart';
import 'features/changeItem/ViewChangeItem.dart';
import 'features/homeScreenRichPoor/viewHomeScreenRichPoor.dart';
import 'features/logIn/logInScreen.dart';
import 'features/loginSingup/logInSingUpScreen.dart';
import 'features/veryFirstScreenUserType/veryFirstScreenUserType.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ViewHomeScreenRichPoor()
    );
  }
}
