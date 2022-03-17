import 'dart:convert';
import 'package:http/http.dart' as http;       // pubspec....
import '../Useful/processingResponse.dart';
import 'dao.dart';
import 'dataModel.dart';
import 'dataModelBuilder.dart';

abstract class DaoWebApi<DM extends DataModel, DB extends DataModelBuilder<DM>> extends Dao<DM> {
  final String server;
  final String path;
  final DB dataModelBuilder;
  final Map<String, DM>? cache;

  DaoWebApi({required this.server, required this.path, required this.dataModelBuilder, this.cache});

  Future<DM?> getDataModel(String id) async {
    try {
      DM? dataModel = _getDataModelFromCache(id);
      if (dataModel != null) return dataModel;
      String url = server + "/" + path + "/" + id;
      // print(url);
      print(Uri.parse(url));
      http.Response response = await http.get(Uri.parse(url));
      // print("  --> " + response.body);
      if (response.statusCode == 200) {
        String jsonString = response.body;
        Map<String, dynamic> json = jsonDecode(jsonString);
        dataModel = await dataModelBuilder.createDataModel(json);
        _putDataModelIntoCache(id, dataModel);
        return dataModel;
      } else {
        throw Exception('Failed to open $url');
      }
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }// getting a n id as string => dataModel,

  Future<List<DM>> getDataModels() async {
    String url = server + "/" + path;
    //print(url);
    print(Uri.parse(url));
    http.Response response = await http.get(Uri.parse(url));
    // print("  --> " + response.body);
    if (response.statusCode == 200) {
      String jsonString = response.body;
      List<dynamic> json = jsonDecode(jsonString);
      List<DM> dataModels = List.empty(growable: true);
      json.forEach((element) {
        DM? dataModel = dataModelBuilder.createDataModel(element);
        if (dataModel != null) dataModels.add(dataModel);
      });
      return dataModels;
    } else {
      throw Exception('Failed to open $url');
    }
  }// retorna uma lista varios data model

  Future<List<DM>> getDataModelsById(String id) async {
    String url = server + "/" + path + "/" + id;
    //print(url);
    print(Uri.parse(url));
    http.Response response = await http.get(Uri.parse(url));
    // print("  --> " + response.body);
    if (response.statusCode == 200) {
      String jsonString = response.body;
      List<dynamic> json = jsonDecode(jsonString);
      List<DM> dataModels = List.empty(growable: true);
      json.forEach((element) {
        DM? dataModel = dataModelBuilder.createDataModel(element);
        if (dataModel != null) dataModels.add(dataModel);
      });
      return dataModels;
    } else {
      throw Exception('Failed to open $url');
    }
  }

  Future<ProcessingResponse> saveDataModel(DM dataModel) async {
    throw Exception('Not Implemented!');
  }

  Future<ProcessingResponse> removeDataModel(DM dataModel) async {
    throw Exception('Not Implemented!');
  }

  DM? _getDataModelFromCache(String id) {
    if ((this.cache != null) && (this.cache!.containsKey(id))) {
      return this.cache![id]!;
    }
    return null;
  }//cria um cache que devolve um data model

  void _putDataModelIntoCache(String id, DM? dataModel) {
    if (dataModel != null) {
      if (this.cache != null) {
        this.cache!.putIfAbsent(id, () => dataModel);
      }
    }
  }
}