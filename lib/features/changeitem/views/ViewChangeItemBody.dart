import 'package:flutter/cupertino.dart';
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
      child:
      Padding(
        padding: EdgeInsets.all(8.0),
        child: ViewListItems(),
      ),
    );
  }
}
