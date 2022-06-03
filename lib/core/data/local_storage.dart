import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  Future salvar(String chave, dynamic valor) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(chave, valor);
  }

  Future<dynamic> ler(String chave) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      final retorno = prefs.getString(chave);
      return retorno;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future remover(String chave) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(chave);
  }
}
