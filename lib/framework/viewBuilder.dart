import 'package:google_gdsc_competion/framework/viewActions.dart';

import 'view.dart';
import 'viewModel.dart';

abstract class ViewBuilder<V extends View, VM extends ViewModel, VA extends ViewActions> {
  V createView(VM? viewModel, VA viewActions);
}
