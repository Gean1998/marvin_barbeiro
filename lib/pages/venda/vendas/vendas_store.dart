import 'package:marvin_barbeiro/pages/venda/nova_venda/nova_venda_store.dart';
import 'package:mobx/mobx.dart';
part 'vendas_store.g.dart';

class VendasStore = _VendasStoreBase with _$VendasStore;

abstract class _VendasStoreBase with Store {
  @observable
  ObservableList<NovaVendaStore> vendas = ObservableList<NovaVendaStore>();

  void adicionarNovaVenda(NovaVendaStore venda) {
    venda.id = obterIdNovaVenda();
    vendas.add(venda);
  }

  @action
  int obterIdNovaVenda() => vendas.length + 1;

  @computed
  String get vendasDiaValor {
    var dataHoje = DateTime.now();
    var valor = 0.0;

    for (var venda in vendas) {
      if (venda.data!.day == dataHoje.day &&
          venda.data!.month == dataHoje.month &&
          venda.data!.year == dataHoje.year) {
        valor += venda.servico!.valor!;
      }
    }

    return valor.toString();
  }

  @computed
  String get vendasMesValor {
    var dataHoje = DateTime.now();
    var valor = 0.0;

    for (var venda in vendas) {
      if (venda.data!.month == dataHoje.month &&
          venda.data!.year == dataHoje.year) {
        valor += venda.servico!.valor!;
      }
    }

    return valor.toString();
  }

  @computed
  String get vendasAnoValor {
    var dataHoje = DateTime.now();
    var valor = 0.0;

    for (var venda in vendas) {
      if (venda.data!.year == dataHoje.year) {
        valor += venda.servico!.valor!;
      }
    }

    return valor.toString();
  }
}
