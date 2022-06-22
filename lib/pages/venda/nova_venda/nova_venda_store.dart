import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:marvin_barbeiro/pages/cliente/stores/cliente_store.dart';
import 'package:marvin_barbeiro/pages/servicos/model/servico_model.dart';
import 'package:marvin_barbeiro/pages/venda/vendas/vendas_store.dart';
import 'package:mobx/mobx.dart';
part 'nova_venda_store.g.dart';

class NovaVendaStore = _NovaVendaStoreBase with _$NovaVendaStore;

abstract class _NovaVendaStoreBase with Store {
  final vendasStore = GetIt.I.get<VendasStore>();

  _NovaVendaStoreBase() {
    definirClienteConsumidor();
    data = DateTime.now();
    controllerCliente.addListener(() {
      definirNome(controllerCliente.text);
    });
  }

  @observable
  TextEditingController controllerCliente = TextEditingController(text: '');

  @observable
  ClienteStore? cliente;

  int? id;

  @observable
  String formaPagamento = 'Dinheiro';

  @observable
  ServicoModel? servico;

  @observable
  DateTime? data;

  @action
  void definirCliente(ClienteStore clienteSelecionado) {
    controllerCliente.text = clienteSelecionado.nome!;
    cliente = clienteSelecionado;
  }

  @action
  void definirNome(String novoNome) {
    if (cliente != null) {
      cliente!.nome = novoNome;
    }
  }

  @action
  void definirClienteConsumidor() => cliente = ClienteStore(
        nome: 'Consumidor',
        idade: '18',
        email: 'email@email.com',
        uf: 'MT',
      );

  @action
  void salvar() => vendasStore.adicionarNovaVenda(this as NovaVendaStore);
}
