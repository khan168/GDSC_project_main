import 'package:google_gdsc_competion/features/changeCity/blocEventChangeCity.dart';
import 'package:google_gdsc_competion/features/changeCity/viewModelChangeCity.dart';

import '../../framework/pipe.dart';
import '../../framework/viewActions.dart';


class ViewActionsChangeCity extends ViewActions<BlocEventChangeCity> {
  ViewActionsChangeCity(Pipe<BlocEventChangeCity> blocPipeIn) : super(blocPipeIn);

  void aplicaFiltroPesquisa(ViewModelChangeCity viewModel) {
    BlocEventChangeCityMakeSearchFilter blocEvent = BlocEventChangeCityMakeSearchFilter(viewModel);
    blocPipeIn.send(blocEvent);
  }
}
