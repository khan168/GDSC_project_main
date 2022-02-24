import 'package:flutter/cupertino.dart';

import 'ViewHeaderSearchCity.dart';
import 'ViewListCities.dart';



class ViewSearchCityBody extends StatefulWidget {
  const ViewSearchCityBody({Key? key}) : super(key: key);

  @override
  _ViewPesquisaCidadeBodyState createState() => _ViewPesquisaCidadeBodyState();
}

class _ViewPesquisaCidadeBodyState extends State<ViewSearchCityBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        Padding(
          padding: EdgeInsets.all(8.0),
          child: ViewListCities(),
        ),
    );
  }
}

