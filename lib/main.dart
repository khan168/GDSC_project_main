import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_gdsc_competion/framework/provider.dart';
import 'package:google_gdsc_competion/models/user.dart';
import 'package:google_gdsc_competion/services/Auth.dart';
import 'package:google_gdsc_competion/wrapper.dart';
import 'package:provider/provider.dart';
import 'features/singUpScreenInstitution/ViewSingUpScreenInstitution.dart';
import 'features/veryFirstScreenUserType/veryFirstScreenUserType.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<dataModelUser?>.value(
      catchError:(_, __) => null,
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
      home: Wrapper()
    )
    );
  }
}
