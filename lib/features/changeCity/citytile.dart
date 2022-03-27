import 'package:flutter/material.dart';

import 'package:google_gdsc_competion/models/institutionFromFire.dart';

class citytile extends StatelessWidget {
  late final SnapshotToIns? ins;
  citytile({required this.ins});


  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 8.0),
      child:Card(
        margin:EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0),
        child:ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.green,
          ),
          title: Text(ins!.city),
          subtitle:Text(ins!.address) ,
        ) ,
      ) ,
    );
  }
}
