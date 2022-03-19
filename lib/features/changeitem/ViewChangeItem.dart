import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_gdsc_competion/features/changeItem/views/ViewChangeItemBody.dart';
import 'package:google_gdsc_competion/features/changeItem/views/ViewChangeItemHeaderSearchItem.dart';


class ViewChangeItem extends StatefulWidget {
  const ViewChangeItem({Key? key}) : super(key: key);

  @override
  _ViewHomeScreenState createState() => _ViewHomeScreenState();
}
class _ViewHomeScreenState extends State<ViewChangeItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade700


            ),
          ),
        title: Text('Choose One Item', style: TextStyle(color: Colors.black),),
      ),
      body:
      SafeArea(
        child: ViewChangeItemBody(),
      ),
    );
  }
}
/*




 */