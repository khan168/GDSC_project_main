/*import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
}*/

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_gdsc_competion/features/veryFirstScreenUserType/veryFirstScreenUserType.dart';

import 'package:google_gdsc_competion/services/database.dart';

import 'models/institutionFromFire.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ViewVeryFirstScreen()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, }) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final DatabaseService _databaseService = DatabaseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<SnapshotToIns>>(
        stream: _databaseService.InsAll_stream,
        builder: (BuildContext context,
            AsyncSnapshot<List<SnapshotToIns>> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          }

          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: ((context, index) {
                SnapshotToIns item = snapshot.data![index];
                return Column(
                  children: [Text(item.city)],
                );
              }));
        },
      ),
    );
  }
}
