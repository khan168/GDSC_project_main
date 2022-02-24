import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewListCities extends StatefulWidget {
  const ViewListCities({Key? key}) : super(key: key);

  @override
  _ChooselocationState createState() => _ChooselocationState();
}

class _ChooselocationState extends State<ViewListCities> {
  @override
  List<String> locations = [
    'BCD','BCD','BCD','BCD','BCD','BCD','BCD'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount:locations.length ,
          shrinkWrap: true,
          itemBuilder: (context,index){
            return Card(

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
          },
        )
      );
    }
  }
