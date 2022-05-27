import 'package:mobx/mobx.dart';
part 'cliente_store.g.dart';

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
