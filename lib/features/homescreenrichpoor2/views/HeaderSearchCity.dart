/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderSearchCity extends StatefulWidget {
  const HeaderSearchCity({Key? key}) : super(key: key);

  @override
  _ViewHeaderPesquisaCidadeState createState() => _ViewHeaderPesquisaCidadeState();
}
final cityControllerSearch = TextEditingController();


class _ViewHeaderPesquisaCidadeState extends State<HeaderSearchCity> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: cityControllerSearch,
            onChanged: (text) {
              // this.viewActions.aplicaFiltroPesquisa(this.viewModel);
              //selectingCity(listaAll,listaAll2)
            },
            decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search),
              labelText: "Search City",
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
}*/
