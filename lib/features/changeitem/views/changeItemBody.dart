import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ViewChangeItemHeaderSearchItem.dart';
import 'ViewListItems.dart';
import 'backArrowChangeCityScreen.dart';

class ChangeItemBody extends StatefulWidget {
  static const String id = 'mentor sample 1';
  const ChangeItemBody({Key? key}) : super(key: key);

  @override
  _Sample1State createState() => _Sample1State();
}

class _Sample1State extends State<ChangeItemBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.blue.shade900,
                  Colors.blue.shade500,
                  Colors.blue.shade400,
                ]
            )
        ),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),

            ViewChangeItemHeaderSearchItem(),
            SizedBox(height: 10,),
            ViewListItems(),
        ]
       ),
      ),
    );
  }
}