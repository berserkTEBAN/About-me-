import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TebanGames'),
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
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Text(
              'Hola,Juega con teban chiquito cambiandolo de tamaño :)',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            _crearSlider(),
            _crearSwitch(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.west),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  //metodo para crear slider
  Widget _crearSlider() {
    return Slider(
        value: _valorSlider,
        label: 'Tamaño de la imagen',
        min: 10.0,
        max: 400.0,
        activeColor: Color.fromARGB(255, 164, 6, 169),
        onChanged: (_bloquearCheck)
            ? null
            : ((value) {
                setState(() {
                  _valorSlider = value;
                });
              }));
  }

  Widget _crearImagen() {
    return Image(
      image: AssetImage('assets/images/pipe.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  //metodo para crear un Switch
  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Fijar'),
      value: _bloquearCheck,
      onChanged: (value) {
        setState(() {
          _bloquearCheck = value;
        });
      },
    );
  }
}
