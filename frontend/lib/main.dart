import 'package:flutter/material.dart';
import 'package:frontend/layout/eleccion_servicio.dart';
import 'package:frontend/layout/layout.dart';
import 'package:frontend/layout/lista_establecimientos.dart';

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
      debugShowCheckedModeBanner: false,
      initialRoute: '/lista_establecimientos', // Definir la ruta inicial
      routes: {
        '/': (BuildContext context) => const pagina_principal(),
        '/ingreso': (BuildContext context) => const ingreso_usuarios(),
        '/registro': (BuildContext context) => const registro_usuarios(),
        '/nosotros': (BuildContext context) => const acerca_de_nosotros(),
        '/cliente': (BuildContext context) => const usuarios(),
        '/profesional': (BuildContext context) => const profesionales(),
        '/lista_establecimientos': (BuildContext context) =>
            const ListaEstablecimientos(),
        '/eleccion_servicio': (BuildContext context) =>
            const EleccionServicio(),
        '/agenda_profesional': (BuildContext context) =>
            const agenda_profesional(),
      },
    );
  }
}
