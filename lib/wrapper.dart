import 'package:flutter/material.dart';
import 'package:google_gdsc_competion/features/logIn/logInScreen.dart';
import 'package:google_gdsc_competion/features/loginSingup/logInSingUpScreen.dart';
import 'package:google_gdsc_competion/features/singUpScreenInstitution/ViewSingUpScreenInstitution.dart';
import 'package:provider/provider.dart';
import 'package:google_gdsc_competion/models/user.dart';

import 'features/homeScreenRichPoor/viewHomeScreenRichPoor.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final u = Provider.of<dataModelUser?>(context);

    //return either home or authenticate widget
    if (u==null){
      return const LogInSingUpScreen();
    }else{
      return  ViewHomeScreenRichPoor();
    }
  }
}
