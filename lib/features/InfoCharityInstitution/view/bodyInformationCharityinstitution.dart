import 'package:flutter/material.dart';
import 'dart:io'; //as notGiven show Platform
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';


class cardsbody extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<cardsbody> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(

        body: Align(
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              Name(),
              Email(),
              Phone(),
              Address(),
              Items(),
              Hours(),
              City(),
              Kkkkkkkkk()
            ],
          ),
        ),
      );

  Widget Name() =>
      Card(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.account_box, size:40),
                        SizedBox(width: 75,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Name"),
                            Text("Other Stuff"),
                          ],
                        ),
                      ],

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget Email() =>
      Card(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.mail,size: 40),
                        SizedBox(width: 75,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Email"),
                            Text("EMAIl ADDRESS"),
                          ],
                        ),
                      ],

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget Phone() =>
      Card(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.account_box,size: 40),
                        SizedBox(width: 75,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Phone #"),
                            Text("PHONE NUMBER"),
                          ],
                        ),
                      ],

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget Address() =>
      Card(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.gps_fixed,size: 40,),
                        SizedBox(width: 75,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Address"),
                            Text("ADDRESS"),
                          ],
                        ),
                      ],

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget Items() =>
      Card(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.icecream, size: 40,),
                        SizedBox(width: 75,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Items"),
                            Text("ITEMS"),
                          ],
                        ),
                      ],

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget Hours() =>
      Card(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.access_time,size: 40),
                        SizedBox(width: 75,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Working Hours"),
                            Text("HOURS"),
                          ],
                        ),
                      ],

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget City() =>
      Card(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Container(
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.location_city,size:40),
                          SizedBox(width: 75,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("City"),
                              Text("CITY"),
                            ],
                          ),
                        ],

                      ),
                    ),
                  ],
                ),
              ]
          ),
        ),
      );
}

class Kkkkkkkkk extends StatefulWidget {
  const Kkkkkkkkk({Key? key}) : super(key: key);

  @override
  _KkkkkkkkkState createState() => _KkkkkkkkkState();}

class _KkkkkkkkkState extends State<Kkkkkkkkk> {
  void _callPrestadorDeServico() async {
    var userNumber = '+55555555';
    var url = "tel://${
        userNumber}";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 140,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color(0xff9e9e9e)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ))),
                onPressed: () async {
                  //await _callPrestadorDeServico();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.phone, color: Colors.white),
                    Text("Call", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
            SizedBox(width: 55),
            SizedBox(
              // Colors.greenAccent
              width: 140,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color(0xff006400)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ))),
                onPressed: () async {
                  launch(
                      'https://web.whatsapp.com'); //<-------------------------------------------------
                  //   viewActions.openWhatsapp(context, viewModel);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //    Icon(MdiIcons.whatsapp, color: Colors.white),
                    Text("Whatsapp", style: TextStyle(color: Colors.white)),

                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}