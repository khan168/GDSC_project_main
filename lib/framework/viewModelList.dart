import 'package:flutter/cupertino.dart';
import 'package:google_gdsc_competion/framework/viewModel.dart';
import 'mixInDescription.dart';


abstract class ViewModelList<O extends MixInDescription> extends ViewModel {
  final List<O> visibleList;
  final List<O> completList;
  final TextEditingController controlerFieldPesquisa = TextEditingController();

  ViewModelList({
    required this.visibleList,
    required this.completList,
  });

  void makeSearchFilter() {
    this.visibleList.clear();
    String searchingArgument = this.controlerFieldPesquisa.text.toUpperCase().trim();
    if (searchingArgument.isEmpty) {
      this.visibleList.addAll(this.completList);
    } else {
      this.completList.forEach((objetoDaLista) {
        String descriptionBusinessModel = objetoDaLista.getDescription().toUpperCase();
        if (descriptionBusinessModel.contains(searchingArgument)) {
          this.visibleList.add(objetoDaLista);
        }
      });
    }
  }
}