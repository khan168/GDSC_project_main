import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewListItems extends StatefulWidget {
  const ViewListItems({Key? key}) : super(key: key);

  @override
  _ChooselocationState createState() => _ChooselocationState();
}

class _ChooselocationState extends State<ViewListItems> {
  @override
  List<String> locations = [
    'BCD','BCD','BCD','BCD','BCD','BCD','BCD','BCD'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),

        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card
                  (
                  color: Colors.white,
                  child:
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Select Item",
                    ),
                  ),
                ),
                SizedBox(height:8),

                ListView.builder(
                    shrinkWrap: true,
                    itemCount: locations.length,
                    itemBuilder: (context,index) {
                      return Card(
                        color: Colors.white,

                        child: ListTile(

                            onTap:(){},
                            title: Text(
                              locations[index],
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                            leading: Icon(Icons.location_city)
                        ),
                      );
                    }),
              ],
          ),
        ),
      ),
    );
    }
  }
