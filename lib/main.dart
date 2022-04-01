/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'features/homeScreenRichPoor/views/bodyHomeScreenRichPoor.dart';
import 'features/logIn/logInScreen.dart';
import 'features/profileCharityInstitutionHomeScreen/ViewprofileCharityInstitutionHomeScreen.dart';
import 'features/profileCharityInstitutionHomeScreen/views/bodyprofilecharityinstitutionhomescreen.dart';
import 'features/profileCharityIntitution/viewProfileCharityInstitution.dart';
import 'features/singUpScreenInstitution/ViewSingUpScreenInstitution.dart';
import 'features/veryFirstScreenUserType/veryFirstScreenUserType.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProfileCharityInstitution()
    );
  }
}

 */

/*
import 'package:animated_theme_switcher/animated_theme_switcher.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'features/treinamento/themes.dart';
import 'features/treinamento/widgets/page/profile_page.dart';
import 'features/treinamento/widgets/ultils/user_preferences.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeModelInheritedNotifier.of(context).theme,
          title: title,
          home: ProfilePage(),
        ),
      ),
    );
  }
}

 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'features/Treinamento2/pages/profile_page.dart';
import 'features/veryFirstScreenUserType/veryFirstScreenUserType.dart';

void main() {
  runApp(MyApp());

  // Handles Status and Nav bar styling/theme
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black,
          fontFamily: 'Roboto',
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shadowColor: Colors.grey,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0.0))))),
          inputDecorationTheme: InputDecorationTheme(
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(0.0))),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              alignment: Alignment.centerLeft,
              primary: Colors.black,
            ),
          )),
      home: ViewVeryFirstScreen(),
    );
  }
}