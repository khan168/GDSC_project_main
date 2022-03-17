import 'package:flutter/cupertino.dart';

import 'ListResoultSearchCityItem.dart';
import 'SearchTextResoultSearchCityItem.dart';

class BodyResoultSearchCityItem extends StatefulWidget {
  const BodyResoultSearchCityItem({Key? key}) : super(key: key);

  @override
  _BodyResoultSearchCityItemState createState() => _BodyResoultSearchCityItemState();
}

class _BodyResoultSearchCityItemState extends State<BodyResoultSearchCityItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchTextListaPrestadoresDeServico(),
        ),
            Expanded(
                  child: ListResoultSearchCityItem(),
        ),
      ],
    );
  }
}
