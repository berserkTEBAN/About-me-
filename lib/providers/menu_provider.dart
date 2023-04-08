import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert'; //convierte el json agregqado a un mapa

class _MenuProvider {
  List<dynamic> opciones = [];
//constructor
  _MenuProvider() {}
  Future<List<dynamic>> cargarOpciones() async {
    final resp = await rootBundle.loadString("assets/menu_opts.json");
    Map dataMap = jsonDecode(resp);
    opciones = dataMap["rutas"];

    return opciones;
  }
}

//Con esto exponemos el provider al resto de la app
final menuProvider = new _MenuProvider();
