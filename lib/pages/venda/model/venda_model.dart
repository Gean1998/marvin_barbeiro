import 'package:marvin_barbeiro/pages/servicos/model/servico_model.dart';

import '../../cliente/model/cliente.dart';

class VendaModel {
  VendaModel({
    this.id,
    this.cliente,
    this.data,
    this.formaPagamento,
    this.servico,
  });

  int? id;
  ClienteModel? cliente;
  String? formaPagamento;
  DateTime? data;
  ServicoModel? servico;
}
