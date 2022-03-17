import 'package:google_gdsc_competion/framework/businessModel.dart';
import '../framework/mixInDescription.dart';

class BusinessModelCity extends BusinessModel with MixInDescription {
  final int codCity;
  final String name;
  final int totalDonators;

  BusinessModelCity({
    required this.codCity,
    required this.name,
    required this.totalDonators,
  }) : super(id: codCity.toString());

  factory BusinessModelCity.vazio() => BusinessModelCity(codCity: 0, name: '', totalDonators: 0);

  factory BusinessModelCity.Todos() => BusinessModelCity(codCity: 999999, name: 'Todos', totalDonators: 0);


  @override
  String getDescription() {
    return name;
  }
}

/*
import 'package:projeto_treinamento/framework/businessModel.dart';
import 'package:projeto_treinamento/framework/mixInDescricao.dart';

class BusinessModelCidade extends BusinessModel with MixInDescricao {
  final int codCidade;
  final String nome;
  final int totalPrestadoresServico;

  BusinessModelCidade({
    required this.codCidade,
    required this.nome,
    required this.totalPrestadoresServico,
  }) : super(id: codCidade.toString());

  factory BusinessModelCidade.vazio() => BusinessModelCidade(codCidade: 0, nome: '', totalPrestadoresServico: 0);

  factory BusinessModelCidade.Todos() => BusinessModelCidade(codCidade: 999999, nome: 'Todos', totalPrestadoresServico: 0);

  String getDescricao() {
    return nome;
  }
}


 */
