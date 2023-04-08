//con mateapp nos pone todo lo inicial
import 'package:sparky/pages/avatar_page.dart';
import 'package:sparky/pages/card_page.dart';
import 'package:sparky/pages/forms_page.dart';
import 'package:sparky/pages/home_page.dart';
import 'package:sparky/pages/listview_page.dart';
import 'package:sparky/pages/slider_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sparky/pages/musica.dart';

void main() => runApp(const MyApp());

//stles
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'MX'),
      ],
      title: 'conoceme',
      //home: HomePage()
      initialRoute: "home",
      routes: <String, WidgetBuilder>{
        "home": (BuildContext context) => HomePage(),
        "inicio": (BuildContext context) => AvatarPage(),
        "card": (BuildContext context) => CardPage(),
        "forms": (BuildContext context) => FormsPage(),
        "juego": (BuildContext context) => SliderPage(),
        "list": (BuildContext context) => ListPage(),
        "musica": (BuildContext context) => Musica(),
      },
    );
  }
}
