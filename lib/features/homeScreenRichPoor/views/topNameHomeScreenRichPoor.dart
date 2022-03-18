import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../profileCharityInstitutionHomeScreen/views/userData.dart';

class TopNameHomeScreenRichPoor extends StatefulWidget {
  const TopNameHomeScreenRichPoor({Key? key}) : super(key: key);

  @override
  _topnamehomeScreenRichPoorState createState() => _topnamehomeScreenRichPoorState();
}

class _topnamehomeScreenRichPoorState extends State<TopNameHomeScreenRichPoor> {
  @override
  Widget build(BuildContext context) {
    final user = UserData.myUser;
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                child: Text(
                  'Hello,',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),

              SizedBox(height: 2),

              Container(
                child: Text(
                  user.name,
                  style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width:130),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Center(

              child: CircleAvatar(
                radius: 37,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/imageLogo.jpeg'),
                  radius: 36,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
