import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  //const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gustos'),
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
          _crearCard5(),
          SizedBox(
            height: 20.0,
          ),
          _crearCard6(),
          SizedBox(
            height: 20.0,
          ),
          _crearCard7(),
          SizedBox(
            height: 20.0,
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
            title: Text('Entretenimiento'),
            subtitle: Text(
                '\nMe gusta mucho ver videos en youtube,ver anime y leer manga es de mis pasatiempos favoritos para entretenerme y pasar el tiempo.\n'),
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            image: AssetImage("assets/images/gusto1.jpg"),
            height: 200.0,
            width: 400.0,
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text("Cancelar")),
              TextButton(onPressed: () {}, child: Text("Aceptar")),
            ],
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
        ListTile(
          title: Text('Comida'),
          subtitle: Text(
              '\nMe gusta mucho la comida rapida y la comida mexica,en espacial los tacos y los burritos y comidas hogareñas mas que nada.\n'),
        ),
        FadeInImage(
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          image: AssetImage("assets/images/gusto2.jpg"),
          height: 200.0,
          width: 400.0,
          fadeInDuration: Duration(milliseconds: 200),
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(""),
        )
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
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
        ListTile(
          title: Text('Deportes'),
          subtitle: Text(
              '\nEn estos momentos me gusta mucho el futbol y entrenar como los el el gimnasio,el futbol es uno de los deportes que me llama mucho la atencion por el momento y que me gusta practicarlo actualmente.\n'),
        ),
        FadeInImage(
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          image: AssetImage("assets/images/gusto3.jpg"),
          height: 200.0,
          width: 400.0,
          fadeInDuration: Duration(milliseconds: 200),
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(""),
        )
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
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
        ListTile(
          title: Text('Musica'),
          subtitle: Text(
              '\nMe gusta mucho escuchar musica en casi todo mom ento,siento que es mi pasatiempo favorito y a la vez mi distraccion mas grande,me gusta todo tipo de genero y siempre me gusta conocer nuevos,en especial el rock,metal y rap,actualmente mi banda favorita es Cage The Elephant del genero de rock alternativo\n'),
        ),
        FadeInImage(
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          image: AssetImage("assets/images/gusto4.jpg"),
          height: 200.0,
          width: 400.0,
          fadeInDuration: Duration(milliseconds: 200),
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(""),
        )
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
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

Widget _crearCard5() {
  final card = Container(
    child: Column(
      children: [
        ListTile(
          title: Text('Dibujar'),
          subtitle: Text(
              '\nMe gusta mucho en los tiempos libres o ratos que no tengo nada que hacer,dibujar o pintar con oleo o acuarelas,es algo que me desestresa demasiado y desde que soy pequeño es algo que me ha gustado mucho hacer por diversion.\n'),
        ),
        FadeInImage(
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          image: AssetImage("assets/images/gusto5.jpg"),
          height: 200.0,
          width: 400.0,
          fadeInDuration: Duration(milliseconds: 200),
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(""),
        )
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
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

Widget _crearCard6() {
  final card = Container(
    child: Column(
      children: [
        ListTile(
          title: Text('VideoJuegos'),
          subtitle: Text(
              '\nAlgo que me gusta demasiado es jugar videojuegos,lo malo de esto es que muchas veces no tengo tiempo para jugar y demas,pero en un tiempo libre,vacaciones o asi,siempre me gusta jugar un poco con amigos y pasar uno que otro juego que va saliendo.n'),
        ),
        FadeInImage(
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          image: AssetImage("assets/images/gusto6.jpg"),
          height: 400.0,
          width: 400.0,
          fadeInDuration: Duration(milliseconds: 200),
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(""),
        )
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
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

Widget _crearCard7() {
  final card = Container(
    child: Column(
      children: [
        ListTile(
          title: Text('Patinar'),
          subtitle: Text(
              '\nAlgo que me encanta demasiado es salir a andar en patineta,siento que rodar por las calles es algo muy relajante,fresco y desestresante ya que es algo que te desconecta un rato de la tecnologia y te pone en contexto con el exteriro,asi mi patineta y yo siempre buscamos lugares nuevos por conocer y patinar.\n'),
        ),
        FadeInImage(
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          image: AssetImage("assets/images/gusto7.jpg"),
          height: 200.0,
          width: 400.0,
          fadeInDuration: Duration(milliseconds: 200),
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(""),
        )
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
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
