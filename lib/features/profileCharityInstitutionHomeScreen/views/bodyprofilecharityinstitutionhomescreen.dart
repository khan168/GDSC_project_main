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
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        SizedBox(height: 50),

        SafeArea(child: profileicon()),


        SizedBox(height: 40,),

        buildUserInfoDisplay(user.name, 'Name'),
        buildUserInfoDisplay(user.telephone, 'Phone'),
        buildUserInfoDisplay(user.email, 'Email'),
        buildUserInfoDisplay(user.address, 'Address'),
        buildUserInfoDisplay(user.email, 'Email'),
        buildUserInfoDisplay(user.affiliation, 'Affiliation to Institution'),
        buildUserInfoDisplay(user.affiliation, 'Affiliation to Institution'),

      ],);


  }
}