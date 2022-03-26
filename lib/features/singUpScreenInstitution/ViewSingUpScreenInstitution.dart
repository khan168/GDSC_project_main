import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_gdsc_competion/features/profileCharityInstitutionHomeScreen/views/bodyprofilecharityinstitutionhomescreen.dart';
import 'package:google_gdsc_competion/features/profileCharityInstitutionHomeScreen/views/userData.dart';
import 'package:google_gdsc_competion/features/singUpScreenInstitution/views/bodySingUpScreenInstitution.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


class singUpScreenInstitution extends StatefulWidget {
  const singUpScreenInstitution({Key? key}) : super(key: key);

  @override
  _ViewHomeScreenState createState() => _ViewHomeScreenState();
}

class _ViewHomeScreenState extends State<singUpScreenInstitution> {
  Client client =http.Client();
  @override
  Widget build(BuildContext context) {
    final user = UserData.myUser;
    return Scaffold(
      backgroundColor: Colors.white,
      body:  BodySingUpScreenInstitution(client: client,),

    );
  }
}
