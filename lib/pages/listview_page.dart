import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _listaNumeros = [];
  int _ultimoItem = 0;

  ScrollController _controller = new ScrollController();

  //metodo para ejecuatar al inicio
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _agregar10();

    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        _agregar10();
      }
    });
  }

//metodo para desechar el listener
//disp
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeria Aleatoria'),
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

  //metodo para crear el List View
  Widget _crearLista() {
    return ListView.builder(
      controller: _controller,
      itemCount: _listaNumeros.length,
      itemBuilder: (context, index) {
        final imagen = _listaNumeros[index];
        return FadeInImage(
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          image: NetworkImage('https://picsum.photos/600/300/?image=$imagen'),
        );
      },
    );
  }

  void _agregar10() {
    for (var i = 1; i <= 10; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }
    setState(() {});
  }
}
