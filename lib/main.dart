import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'features/logIn/logInScreen.dart';
import 'features/profileCharityInstitutionHomeScreen/ViewprofileCharityInstitutionHomeScreen.dart';
import 'features/profileCharityInstitutionHomeScreen/views/bodyprofilecharityinstitutionhomescreen.dart';
import 'features/singUpScreenInstitution/ViewSingUpScreenInstitution.dart';
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
        home: singUpScreenInstitution()
    );
  }
}
