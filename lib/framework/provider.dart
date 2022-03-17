import '../Useful/processingResponse.dart';
import 'businessModel.dart';

abstract class Provider<BM extends BusinessModel> {
  Future<BM> getBusinessModel(String id);

  Future<List<BM>> getBusinessModels();

  Future<ProcessingResponse> saveBusinessModel(BM businessModel);

  Future<ProcessingResponse> removeBusinessModel(BM businessModel);
}
