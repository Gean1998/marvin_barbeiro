import 'package:marvin_barbeiro/pages/servicos/model/servico_model.dart';

class MockServicos {
  List<ServicoModel> getMock() => [
        ServicoModel(id: 1, descricao: 'Corte de Cabelo', valor: 25.0),
        ServicoModel(id: 2, descricao: 'Barba', valor: 25.0),
        ServicoModel(id: 3, descricao: 'Corte de Cabelo e Barba', valor: 45.0),
        ServicoModel(id: 4, descricao: 'Sobrancelha', valor: 25.0),
      ];
}
