import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_gdsc_competion/features/resoultSearchCityItem/views/bodyResoultSearchCityItem.dart';


class ViewResoultSearchCityItem extends StatefulWidget {
  const ViewResoultSearchCityItem({Key? key}) : super(key: key);

  @override
  _ViewHomeScreenState createState() => _ViewHomeScreenState();
}

class _ViewHomeScreenState extends State<ViewResoultSearchCityItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('app bar'),
      ),
      body: BodyResoultSearchCityItem(),
    );
  }
}
