import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_gdsc_competion/features/changeCity/viewActionsChangeCity.dart';
import 'package:google_gdsc_competion/features/changeCity/viewModelChangeCity.dart';
//import 'listItemChangeCity.dart';


class ViewListCities extends StatelessWidget {
  ViewListCities({
    Key? key,
    required this.viewModel,
    required this.viewActions,
  });

  final ViewModelChangeCity viewModel;
  final ViewActionsChangeCity viewActions;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selecione a sua cidade:",
              style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: viewModel.visibleList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text('data');
                    //ListItemChangeCity(
                   // argumentoDePesquisa: viewModel.controlerFieldPesquisa.text,
                    //city: viewModel.visibleList[index].city,
                    //quantidadeDePrestadores: viewModel.visibleList[index].city.totalDonators,
                  //);
                }),
          ],
        ),
      ),
    );
  }
}
