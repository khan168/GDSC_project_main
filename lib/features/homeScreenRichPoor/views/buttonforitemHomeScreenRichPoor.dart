import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../changeitem/ViewChangeItem.dart';

class ButtonItemHomeScreenRichPoor extends StatefulWidget {
  const ButtonItemHomeScreenRichPoor({Key? key}) : super(key: key);

  @override
  _buttonforcityhomeScreenRichPoorState createState() => _buttonforcityhomeScreenRichPoorState();
}

class _buttonforcityhomeScreenRichPoorState extends State<ButtonItemHomeScreenRichPoor> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,), //'Select the item  you would like to donate or recieve'
          Text('''Select the item you would like to donate 
or recieve''',
            style: TextStyle(fontSize: 16.0),),
          SizedBox(height: 10,),
          Container(
            child: OutlineButton(
              child: Container(
                  width: 260,
                  height: 40,
                  alignment: Alignment.center,
                  child: Row(
                    children: [

                      Text("Select Item", style: TextStyle(fontSize: 15.0),),
                      SizedBox(width: 150,),
                      Icon(Icons.search)

                    ],
                  )
              ),
              highlightedBorderColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ViewChangeItem()
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}