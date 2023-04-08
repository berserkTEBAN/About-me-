import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Musica extends StatelessWidget {
  //const AlertPage({super.key});
  final player = AudioPlayer();
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
            title: Text('\nJOJI-DIE FOR YOU\n'),
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            image: AssetImage("assets/images/joji.jpg"),
            height: 300.0,
            width: 300.0,
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
          ),
          ElevatedButton(
            onPressed: () {
              player.play(AssetSource('die-for-you.mp3'));
            },
            child: const Text('\nPlay\n'),
          ),
          ElevatedButton(
            onPressed: () {
              player.stop();
            },
            child: const Text('\nStop\n'),
          ),
        ],
      ),
    );
  }

  Widget _crearCard2() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          ListTile(
            title: Text('\nTelephones - Vacations\n'),
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            image: AssetImage("assets/images/num2.jpg"),
            height: 300.0,
            width: 300.0,
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
          ),
          ElevatedButton(
            onPressed: () {
              player.play(AssetSource('tele.mp3'));
            },
            child: const Text('\nPlay\n'),
          ),
          ElevatedButton(
            onPressed: () {
              player.stop();
            },
            child: const Text('\nStop\n'),
          ),
        ],
      ),
    );
  }

  Widget _crearCard3() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          ListTile(
            title: Text('\nIm Gone - Oliver tree\n'),
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            image: AssetImage("assets/images/num3.jpg"),
            height: 300.0,
            width: 300.0,
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
          ),
          ElevatedButton(
            onPressed: () {
              player.play(AssetSource('imgone.mp3'));
            },
            child: const Text('\nPlay\n'),
          ),
          ElevatedButton(
            onPressed: () {
              player.stop();
            },
            child: const Text('\nStop\n'),
          ),
        ],
      ),
    );
  }

  Widget _crearCard4() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          ListTile(
            title: Text('\nSocial Cues - Cage The Elephant\n'),
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/num4.gif'),
            image: AssetImage("assets/images/num4.jpg"),
            height: 300.0,
            width: 300.0,
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
          ),
          ElevatedButton(
            onPressed: () {
              player.play(AssetSource('social.mp3'));
            },
            child: const Text('\nPlay\n'),
          ),
          ElevatedButton(
            onPressed: () {
              player.stop();
            },
            child: const Text('\nStop\n'),
          ),
        ],
      ),
    );
  }

  Widget _crearCard5() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          ListTile(
            title: Text('\nY la Felicidad Que? - Canserbero\n'),
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            image: AssetImage("assets/images/num5.jpg"),
            height: 300.0,
            width: 300.0,
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
          ),
          ElevatedButton(
            onPressed: () {
              player.play(AssetSource('vida.mp3'));
            },
            child: const Text('\nPlay\n'),
          ),
          ElevatedButton(
            onPressed: () {
              player.stop();
            },
            child: const Text('\nStop\n'),
          ),
        ],
      ),
    );
  }

  Widget _crearCard6() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          ListTile(
            title: Text('\nWos - Quererme\n'),
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            image: AssetImage("assets/images/num6.jpg"),
            height: 300.0,
            width: 300.0,
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
          ),
          ElevatedButton(
            onPressed: () {
              player.play(AssetSource('quererme.mp3'));
            },
            child: const Text('\nPlay\n'),
          ),
          ElevatedButton(
            onPressed: () {
              player.stop();
            },
            child: const Text('\nStop\n'),
          ),
        ],
      ),
    );
  }

  Widget _crearCard7() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          ListTile(
            title: Text('\nRosa Maria II - Robot\n'),
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            image: AssetImage("assets/images/num7.jpg"),
            height: 300.0,
            width: 300.0,
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
          ),
          ElevatedButton(
            onPressed: () {
              player.play(AssetSource('rosa.mp3'));
            },
            child: const Text('\nPlay\n'),
          ),
          ElevatedButton(
            onPressed: () {
              player.stop();
            },
            child: const Text('\nStop\n'),
          ),
        ],
      ),
    );
  }
}
