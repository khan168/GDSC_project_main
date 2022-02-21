import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInSingUpButtons extends StatefulWidget {
  const LogInSingUpButtons({Key? key}) : super(key: key);

  @override
  _logInSingUpButtonsState createState() => _logInSingUpButtonsState();
}

class _logInSingUpButtonsState extends State<LogInSingUpButtons> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
          Container(

      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.green, //background color of button
                side: BorderSide(width:0, color:Colors.blueAccent), //border width and color
                elevation: 1, //elevation of button
                shape: RoundedRectangleBorder( //to set border radius to button
                    borderRadius: BorderRadius.circular(40)
                ),
                padding: EdgeInsets.all(10) //content padding inside button
            ),
            onPressed: (){
            },
            child: Text('   Sign up as a Charity Institution   ',
                style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )
            ),
          ),
          SizedBox(height: 25),
          Text('Already have an Account?',style: TextStyle(color: Color(0xff4cf2c7),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          )),
          SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.green, //background color of button
                side: BorderSide(width:0, color:Colors.blueAccent), //border width and color
                elevation: 1, //elevation of button
                shape: RoundedRectangleBorder( //to set border radius to button
                    borderRadius: BorderRadius.circular(40)
                ),
                padding: EdgeInsets.all(10) //content padding inside button
            ),
            onPressed: (){
            },
            child: Text('                           Log In                           ',
                style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  )
                ),
              ),
            ],
         ),
      ),
    );
  }
}
