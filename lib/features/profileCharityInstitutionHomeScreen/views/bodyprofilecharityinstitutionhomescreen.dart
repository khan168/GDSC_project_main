/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_gdsc_competion/features/profileCharityInstitutionHomeScreen/views/profileiconprofilecharityinstitutionhomescreen.dart';
import 'package:google_gdsc_competion/features/profileCharityInstitutionHomeScreen/views/userData.dart';

import 'displayuserinfoprofilecharityinstitutionhomescreen.dart';



class bodyprofilecharityinstitutionhomescreen extends StatefulWidget {
  const bodyprofilecharityinstitutionhomescreen({Key? key}) : super(key: key);

  @override
  _bodyprofilecharityinstitutionhomescreenState createState() => _bodyprofilecharityinstitutionhomescreenState();
}
  final passwordController1 = TextEditingController();
class _bodyprofilecharityinstitutionhomescreenState extends State<bodyprofilecharityinstitutionhomescreen> {
  @override
  Widget build(BuildContext context) {
    final user = UserData.myUser;
    return Column(
      children: [
        Center(
          child: Container(
            child: Text(
              'Edit Profile',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        SizedBox(height: 20),

        SafeArea(child: profileicon()),

        SizedBox(height: 25,),


        buildUserInfoDisplay(user.name, 'Name'),
        buildUserInfoDisplay(user.telephone, 'Phone'),
        buildUserInfoDisplay(user.email, 'Email'),
        buildUserInfoDisplay(user.address, 'Address'),
        buildUserInfoDisplay(user.email, 'Email'),
        buildUserInfoDisplay(user.affiliation, 'Affiliation to Institution'),

      ],
    );
  }
}

 */