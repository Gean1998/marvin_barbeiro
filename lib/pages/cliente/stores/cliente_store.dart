import 'package:marvin_barbeiro/pages/cliente/model/cliente.dart';
import 'package:mobx/mobx.dart';
part 'cliente_store.g.dart';

ClienteModel toClienteModel(ClienteStore store) => ClienteModel(
      nome: store.nome,
      idade: store.idade,
      email: store.email,
      ufNascimento: store.uf,
    );

class ClienteStore = _ClienteStoreBase with _$ClienteStore;

abstract class _ClienteStoreBase with Store {
  _ClienteStoreBase({
    this.nome,
    this.idade,
    this.uf,
    this.email,
  });

  @observable
  String? nome;

  @observable
  String? idade;

  @observable
  String? uf;

  @observable
  String? email;
}
