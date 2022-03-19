import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourCardsHomeScreenRichPoor extends StatefulWidget {
  const FourCardsHomeScreenRichPoor({Key? key}) : super(key: key);

  @override
  _recentsearchesCardHomeScreenRichPoorState createState() => _recentsearchesCardHomeScreenRichPoorState();
}

class _recentsearchesCardHomeScreenRichPoorState extends State<FourCardsHomeScreenRichPoor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myWidget1(),
                myWidget2(),
              ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myWidget3(),
              myWidget4()
            ],
          )
        ],
      ),
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.black45, //                   <--- border color
      width: 5.0,
    ),
  );
}
Widget myWidget1() {
  return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(30.0),
      decoration: myBoxDecoration(), //             <--- BoxDecoration here
      child: Icon(
        Icons.food_bank,
        size: 30,
      )
  );
}

Widget myWidget2() {
  return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(30.0),
      decoration: myBoxDecoration(), //             <--- BoxDecoration here
      child: Icon(
          Icons.tv,
          size: 30
      )
  );
}

Widget myWidget3() {
  return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(30.0),
      decoration: myBoxDecoration(), //             <--- BoxDecoration here
      child: Icon(
          Icons.bike_scooter,
          size: 30
      )
  );
}

Widget myWidget4() {
  return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(30.0),
      decoration: myBoxDecoration(), //             <--- BoxDecoration here
      child: Icon(
          Icons.short_text,
          size: 30
      )
  );
}