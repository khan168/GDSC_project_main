import 'DaoMemory.dart';
import 'dataModel.dart';

abstract class DaoPattern<DM extends DataModel> extends DaoMemory<DM> {
  DaoPattern({required List<DM> data}) : super(data: data);
}