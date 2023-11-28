import 'package:flutter/material.dart';
import 'package:frontend/layout/layout.dart';

//todo widget tiene un metodo build, los widget son CLASES
//que sea el padre la const
// ctrl + punto
// ctrl + space
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaginaPrincipal(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/registro': (BuildContext context) => const registro_usuarios(),
        '/nosotros': (BuildContext context) => const acerca_de_nosotros(),
        '/cliente': (BuildContext context) => const usuarios(),
        '/profesional': (BuildContext context) => const profesionales(),
        '/agenda_profesional': (BuildContext context) =>
            const agenda_profesional(),
      },
    );
  }
}
