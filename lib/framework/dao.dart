import '../Useful/processingResponse.dart';
import 'dataModel.dart';

abstract class Dao<DM extends DataModel> {
  Future<DM?> getDataModel(String id);

  Future<List<DM>> getDataModels();

  Future<ProcessingResponse> saveDataModel(DM dataModel);

  Future<ProcessingResponse> removeDataModel(DM dataModel);
}
