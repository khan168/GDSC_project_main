import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_gdsc_competion/features/homeScreenRichPoor/views/fourCardsHomeScreenRichPoor.dart';
import 'package:google_gdsc_competion/features/homeScreenRichPoor/views/topNameHomeScreenRichPoor.dart';
import 'buttonCityHomeScreenRichPoor.dart';
import 'buttonforitemHomeScreenRichPoor.dart';


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

            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 20,),

                              Container(
                                child: buttonCityHomeScreenRichPoor(),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                child: FourCardsHomeScreenRichPoor(),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                child: ButtonItemHomeScreenRichPoor(),//LogInButton(),
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