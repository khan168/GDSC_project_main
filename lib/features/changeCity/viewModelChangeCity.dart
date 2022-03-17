import 'package:flutter/cupertino.dart';
import '../../businessModels/BusinessModelCity.dart';
import '../../framework/viewModelList.dart';
import 'futureModelChangeCity.dart';

class ViewModelChangeCity extends ViewModelList<FeatureModelChangeCity> {
  final TextEditingController controllerFieldSearch = TextEditingController();
  String errorMessage = '';

  ViewModelChangeCity({
    required List<FeatureModelChangeCity> completList,
  }) : super(visibleList: List.empty(growable: true)..addAll(completList), completList: completList);

  BusinessModelCity getCityByCodCity(int codCity) {
    for (int i = 0; i < this.completList.length; i++) {
      if (this.completList[i].city.codCity == codCity) return this.completList[i].city;
    }
    return BusinessModelCity.vazio();
  }
}
