import 'package:google_gdsc_competion/Useful/processingResponse.dart';
import 'package:google_gdsc_competion/framework/provider.dart';
import 'adapter.dart';
import 'businessModel.dart';
import 'dao.dart';
import 'dataModel.dart';

abstract class DirectProvider<DM extends DataModel, BM extends BusinessModel, DAO extends Dao<DM>, AD extends Adapter<BM, DM>> extends Provider<BM> {
  final DAO dao;
  final AD adapter;

  DirectProvider({required this.dao, required this.adapter});

  Future<BM> getBusinessModel(String id) async {
    DM? dataModel = await dao.getDataModel(id);
    BM businessModel = await adapter.createBusinessModel(dataModel);
    return businessModel;
  }

  Future<List<BM>> getBusinessModels() async {
    List<BM> lista = List.empty(growable: true);
    List<DM> dataModels = await dao.getDataModels();
    for(int i = 0; i < dataModels.length; i++) {
      BM businessModel = await adapter.createBusinessModel(dataModels[i]);
      lista.add(businessModel);
    };
    return lista;
  }

  Future<ProcessingResponse> saveBusinessModel(BM businessModel) async {
    DM dataModel = await adapter.createDataModel(businessModel);
    return dao.saveDataModel(dataModel);
  }

  Future<ProcessingResponse> removeBusinessModel(BM businessModel) async {
    DM dataModel = await adapter.createDataModel(businessModel);
    return dao.removeDataModel(dataModel);
  }
}
