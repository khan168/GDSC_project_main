import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ViewChangeItemHeaderSearchItem.dart';
import 'ViewListItems.dart';


class ViewChangeItemBody extends StatefulWidget {
  const ViewChangeItemBody({Key? key}) : super(key: key);

  @override
  _ViewChangeItemBodyState createState() => _ViewChangeItemBodyState();
}

class _ViewChangeItemBodyState extends State<ViewChangeItemBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade200,

      child: Column(
        children: [
          ViewChangeItemHeaderSearchItem(),
          ViewListItems(),
        ]
      ),
    );
  }
}
