import 'package:flutter/cupertino.dart';
import 'package:google_gdsc_competion/framework/view.dart';
import 'package:google_gdsc_competion/framework/viewActions.dart';
import 'package:google_gdsc_competion/framework/viewBuilder.dart';
import 'bloc.dart';
import 'blocEvent.dart';
import 'viewModel.dart';

abstract class Presenter<V extends View, VM extends ViewModel, VA extends ViewActions, BE extends BlocEvent, B extends Bloc<VM, BE>, VB extends ViewBuilder<V, VM, VA>> extends StatelessWidget {
  final B bloc;
  final VB viewBuilder;
  final VA viewActions;
  late ValueNotifier<V> _viewNotifier;

  Presenter({required this.bloc, required this.viewBuilder, required this.viewActions}) {
    this.bloc.pipeOut.receive.listen(onReceiveViewModel);
    _viewNotifier = ValueNotifier(viewBuilder.createView(null, viewActions));
  }

  void onReceiveViewModel(VM? viewModel) {
    _viewNotifier.value = viewBuilder.createView(viewModel, viewActions);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<V>(
        valueListenable: _viewNotifier,
        builder: (_, V view, __) {
          return view;
        });
  }
}
