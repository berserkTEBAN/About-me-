import 'package:sparky/providers/menu_provider.dart';
import 'package:sparky/util/icon_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luis Cruz :)"),
        actions: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/luis.jpg"),
              radius: 25.0,
            ),
          ),
        ],
      ),
      body: _crearLista(),
    );
  }

  //metodo para crear un ListView
  Widget _crearLista() {
    //print(menuProvider.opciones);
    return FutureBuilder(
      future: menuProvider.cargarOpciones(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _crearItems(snapshot.data, context),
        );
      },
    );
  }

  //metodo para crear los items ListTiles
  List<Widget> _crearItems(List<dynamic>? data, BuildContext context) {
    //variable de retorno
    final List<Widget> items = [];

    //validamos si la data es nula
    if (data == null) {
      return [];
    }
    //recorremos la data con un ciclo y vamos creando los items
    data.forEach((item) {
      final itemTemp = ListTile(
        title: Text(item["texto"]),
        leading: getIcon(item["icon"]),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.black87,
        ),
        onTap: () {
          //forma de pasar a otra pagina de manera basica
          //final route = MaterialPageRoute(builder: (context) {
          ///return AlertPage();
          //});
          //Navigator.push(context, route);
          Navigator.pushNamed(context, item["ruta"]);
        },
      );
      items
        ..add(itemTemp)
        ..add(Divider());
    });
    return items;
  }
}
