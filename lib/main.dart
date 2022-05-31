import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:marvin_barbeiro/pages/cliente/stores/cliente_store.dart';
import 'package:marvin_barbeiro/pages/cliente/stores/clientes_store.dart';

import 'app.dart';

void main() {
  runApp(const App());

  GetIt.I.registerSingleton(ClientesStore());
  GetIt.I.registerFactory(() => ClienteStore());
}
