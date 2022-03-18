import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttonforitemHomeScreenRichPoor extends StatefulWidget {
  const buttonforitemHomeScreenRichPoor({Key? key}) : super(key: key);

  @override
  _buttonforitemHomeScreenRichPoorState createState() => _buttonforitemHomeScreenRichPoorState();
}

class _buttonforitemHomeScreenRichPoorState extends State<buttonforitemHomeScreenRichPoor> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(0,30,0,0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select the item  you would like to donate or recieve',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey,
                  letterSpacing: 1.0
              ),
            ),
            SizedBox(height: 25,),
            Container(
              child: OutlineButton(
                child: Container(
                    width: 500,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text("Select item", style: TextStyle(fontSize: 15.0),),
                        SizedBox(width: 240,),
                        Icon(Icons.search)

                      ],
                    )),
                highlightedBorderColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {},


              ),
            ),

          ],
        ),
      ),
    );
  }
}