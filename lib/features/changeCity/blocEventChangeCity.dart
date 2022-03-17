import 'package:google_gdsc_competion/features/changeCity/viewModelChangeCity.dart';
import '../../framework/blocEvent.dart';

abstract class BlocEventChangeCity extends BlocEvent {}

class BlocEventChangeCityStartViewModel extends BlocEventChangeCity {}

class BlocEventChangeCityMakeSearchFilter extends BlocEventChangeCity {
  final ViewModelChangeCity viewModel;

  BlocEventChangeCityMakeSearchFilter(this.viewModel);
}
