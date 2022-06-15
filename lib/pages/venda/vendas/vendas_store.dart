import 'package:marvin_barbeiro/pages/venda/nova_venda/nova_venda_store.dart';
import 'package:mobx/mobx.dart';
part 'vendas_store.g.dart';

class VendasStore = _VendasStoreBase with _$VendasStore;

abstract class _VendasStoreBase with Store {
  @observable
  ObservableList<NovaVendaStore> vendas = ObservableList<NovaVendaStore>();

  void adicionarNovaVenda(NovaVendaStore venda) => vendas.add(venda);

  @action
  int obterIdNovaVenda() => vendas.length + 1;
}
