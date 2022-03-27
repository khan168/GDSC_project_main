

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_gdsc_competion/features/InfoCharityInstitution/view/bodyInformationCharityinstitution.dart';

class InformationCharityInstitution1 extends StatefulWidget {
  const InformationCharityInstitution1({Key? key}) : super(key: key);

  @override
  _InformationCharityInstitution1State createState() => _InformationCharityInstitution1State();
}

class _InformationCharityInstitution1State extends State<InformationCharityInstitution1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text('Name of Organization'),
            centerTitle: false,
            elevation: 0),
        body: cardsbody(),

    );
  }
}
