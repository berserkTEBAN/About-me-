import 'package:flutter/material.dart';

//Declaramos un mapa con los iconos del texto del icono y el qyue le corresponde 4
final _icons = <String, IconData>{
  "accessibility": Icons.heart_broken,
  "card": Icons.cookie,
  "juego": Icons.gamepad_outlined,
  "input": Icons.account_circle,
  "tune": Icons.slideshow_sharp,
  'list': Icons.camera_alt,
  'musica': Icons.library_music,
};

//aagregamos un getter,un metodo que retorne el icono y las caracterusrucas
Icon getIcon(String nombreIcono) {
  return Icon(
    _icons[nombreIcono],
    color: Color.fromARGB(255, 2, 12, 14),
  );
}
