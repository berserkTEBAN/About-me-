import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('Who is Teban?'),
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
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _crearCard1(),
          SizedBox(
            height: 20.0,
          ),
          _crearCard2(),
          SizedBox(
            height: 20.0,
          ),
          _crearCard3(),
          SizedBox(
            height: 20.0,
          ),
          _crearCard4(),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            child: Text("Ver mas"),
            onPressed: () {
              _mostrarAlerta(context);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                textStyle: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.west),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  // Método para crear una card básica
  Widget _crearCard1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            title: Text('QUIEN SOY?'),
            subtitle: Text(
                'Hola yo soy Luis Felipe Cruz Esteban,Soy una persona  moral,responsable y organizada con muchas ganas de mejorar dia tras dia. Me motiva el hecho de que cada dia es una una oportunidad para hacer las cosas,que el equivocarse es aprender y el conocer hace mejorar,siempre con la mejor actitud de aprender.'),
          ),
        ],
      ),
    );
  }
}

Widget _crearCard2() {
  final card = Container(
    child: Column(
      children: [
        FadeInImage(
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          image: AssetImage("assets/images/luis.jpg"),
          height: 300.0,
          width: 200.0,
          fadeInDuration: Duration(milliseconds: 200),
          fit: BoxFit.cover,
        ),
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 255, 255, 255),
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          )
        ]),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: card,
    ),
  );
}

Widget _crearCard3() {
  final card = Container(
    child: Column(
      children: [
        FadeInImage(
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          image: AssetImage("assets/images/luis2.jpg"),
          height: 300.0,
          width: 200.0,
          fadeInDuration: Duration(milliseconds: 800),
          fit: BoxFit.cover,
        ),
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 255, 255, 255),
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          )
        ]),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: card,
    ),
  );
}

Widget _crearCard4() {
  final card = Container(
    child: Column(
      children: [
        FadeInImage(
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          image: AssetImage('assets/images/luis3.jpg'),
          height: 300.0,
          width: 200.0,
          fadeInDuration: Duration(milliseconds: 200),
          fit: BoxFit.cover,
        ),
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 255, 255, 255),
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          )
        ]),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: card,
    ),
  );
}

void _mostrarAlerta(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        title: Text("Holaaaa :3"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                "Si quieres saber mas sobre mi,vuelve al inicio y abre el apartado de Mis Gustos :)"),
            FadeInImage(
              placeholder: AssetImage('assets/images/jar-loading.gif'),
              image: AssetImage("assets/images/naruto.jpg"),
              height: 300.0,
              width: 200.0,
              fadeInDuration: Duration(milliseconds: 200),
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
        actions: [
          TextButton(
            child: Text("Cerrar"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      );
    },
  );
}
