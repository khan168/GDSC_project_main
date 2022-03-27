import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../trienamento/pages/profile_page.dart';

class ProfileButton extends StatefulWidget {
  const ProfileButton({Key? key}) : super(key: key);

  @override
  _LogInButtonState createState() => _LogInButtonState();
}

class _LogInButtonState extends State<ProfileButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProfilePage()
        ));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      padding: EdgeInsets.all(0.0),
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0)
        ),
        child: Container(
          constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
          alignment: Alignment.center,
          child: Center(
            child: Container(
              decoration:  BoxDecoration(
                image:  DecorationImage(
                  image: AssetImage('assets/imageLogo.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),

      // backgroundImage: AssetImage('assets/imageLogo.jpeg'),

      //AssetImage('assets/imageLogo.jpeg'),



    );
  }
}