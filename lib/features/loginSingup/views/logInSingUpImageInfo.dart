import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInSingUpImageInfo extends StatefulWidget {
  const LogInSingUpImageInfo({Key? key}) : super(key: key);

  @override
  _logInSingUpImageInfoState createState() => _logInSingUpImageInfoState();
}

class _logInSingUpImageInfoState extends State<LogInSingUpImageInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
      Container(

        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center;
          children:
          [
          SizedBox(
            height: 300,
              width:300,
              child:
            Image.asset('assets/imageLogo.jpeg')),
            SizedBox(height: 50,),
            Text('Welcome to Your Help',style: TextStyle(color: Color(0xff4cf2c7),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
            SizedBox(height: 50,),
            Text('''Thank You for Signing up as a 
          Charity Institution''',style: TextStyle(color: Color(0xff4cf2c7),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}


