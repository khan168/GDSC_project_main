import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_gdsc_competion/features/homeScreenRichPoor/views/recentsearchesCardsHomeScreenRichPoor.dart';
import 'package:google_gdsc_competion/features/homeScreenRichPoor/views/topNameHomeScreenRichPoor.dart';
import 'package:google_gdsc_competion/features/veryFirstScreenUserType/views/CharityInstitutionsButton.dart';
import 'package:google_gdsc_competion/features/veryFirstScreenUserType/views/DonorButton.dart';

import 'buttonCityHomeScreenRichPoor.dart';


class BodyHomeScreenRichPoor extends StatefulWidget {
  const BodyHomeScreenRichPoor({Key? key}) : super(key: key);

  @override
  _Sample1State createState() => _Sample1State();
}

class _Sample1State extends State<BodyHomeScreenRichPoor> {
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

            TopNameHomeScreenRichPoor(),

            const SizedBox(height: 10),

            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [

                        const SizedBox(height: 40,),
                        // #email, #password
                        Container(

                          child: Column(
                            children: [//click on the one that most fits yoy
                              Container(
                                child: buttonCityHomeScreenRichPoor(),

                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                child: recentsearchesCardHomeScreenRichPoor(),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                child: Text(''),//LogInButton(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}