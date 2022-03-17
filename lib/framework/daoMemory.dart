import '../Useful/processingResponse.dart';
import 'dao.dart';
import 'dataModel.dart';

abstract class DaoMemory<DM extends DataModel> extends Dao<DM> {
  final List<DM> data;

  DaoMemory({required this.data});

  int getPosById(String id) {
    for (int i = 0; i < data.length; i++) {
      DM dataModel = data[i];
      if (dataModel.id == id) return i;
    }
    return -1;
  }

  Future<DM?> getDataModel(String id) async {
    int pos = getPosById(id);
    if (pos >= 0)
      return data[pos];
    else
      return null;
  }

  Future<List<DM>> getDataModels() async {
    List<DM> lista = List.empty(growable: true);
    for (int i = 0; i < data.length; i++) {
      DM dataModel = data[i];
      lista.add(dataModel);
    }
    return lista;
  }

  Future<ProcessingResponse> saveDataModel(DM dataModel) async {
    int pos = getPosById(dataModel.id);
    if (pos < 0) {
      data.add(dataModel);
    } else {
      data[pos] = dataModel;
    }
    return ProcessingResponse.ok();
  }

  Future<ProcessingResponse> removeDataModel(DM dataModel) async {
    int pos = getPosById(dataModel.id);
    if (pos >= 0) data.removeAt(pos);
    return ProcessingResponse.ok();
  }
}