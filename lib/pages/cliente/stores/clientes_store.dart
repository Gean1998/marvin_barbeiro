import 'package:marvin_barbeiro/pages/cliente/stores/cliente_store.dart';
import 'package:mobx/mobx.dart';
part 'clientes_store.g.dart';

class ClientesStore = _ClientesStoreBase with _$ClientesStore;

abstract class _ClientesStoreBase with Store {
  @observable
  ObservableList<ClienteStore> clientes = ObservableList<ClienteStore>();

  @action
  void mesclarCliente(ClienteStore cliente) {
    final ix = clientes.indexOf(cliente);

    if (ix > -1) {
      clientes.removeAt(ix);
    }

    clientes.add(cliente);
    clientes.sort((a, b) => a.nome!.compareTo(b.nome!));
  }

  @action
  void remover(ClienteStore cliente) => clientes.remove(cliente);
}
