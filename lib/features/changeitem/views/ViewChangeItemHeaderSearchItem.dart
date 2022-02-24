import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ViewChangeItemHeaderSearchItem extends StatefulWidget {
  const ViewChangeItemHeaderSearchItem({Key? key}) : super(key: key);

  @override
  _ViewChangeItemHeaderSearchItemState createState() => _ViewChangeItemHeaderSearchItemState();
}

class _ViewChangeItemHeaderSearchItemState extends State<ViewChangeItemHeaderSearchItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            //controller: viewModel.controlerFieldPesquisa,
            onChanged: (text) {
              // this.viewActions.aplicaFiltroPesquisa(this.viewModel);
            },
            decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search),
              labelText: "Search Item",
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          )
        ],
      ),
    );
  }
}
