// ignore_for_file: camel_case_types, library_private_types_in_public_api, prefer_typing_uninitialized_variables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:frontend/layout/eleccion_agenda.dart';
import 'package:frontend/layout/ingreso_usuarios.dart';
import 'package:frontend/layout/lista_empleados.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListaEstablecimientos extends StatefulWidget {
  final id_usuario;
  const ListaEstablecimientos({Key? key, required this.id_usuario})
      : super(key: key);

  @override
  _ListaEstablecimientosState createState() => _ListaEstablecimientosState();
}

class Establecimiento {
  final int id;
  final String nombre;
  final String direccion;
  final String ciudad;
  final String imagen;
  final String horario;

  Establecimiento({
    required this.id,
    required this.nombre,
    required this.direccion,
    required this.ciudad,
    required this.imagen,
    required this.horario,
  });
}

class _ListaEstablecimientosState extends State<ListaEstablecimientos> {
  Future get_establecimientos() async {
    var url = Uri.https(
        "flaskprueba-fb9845ade83c.herokuapp.com", '/establecimientos');
    final response = await http.get(url);
    var responseData = json.decode(response.body);

    List<Establecimiento> establecimientos = [];
    for (var singleUser in responseData) {
      Establecimiento establecimiento = Establecimiento(
        id: singleUser['id'],
        nombre: singleUser['nombre'],
        direccion: singleUser['direccion'],
        ciudad: singleUser['ciudad'],
        imagen: singleUser['imagen'],
        horario: singleUser['horario'],
      );

      establecimientos.add(establecimiento);
    }

    return establecimientos;
  }

  @override
  Widget build(BuildContext context) {
    print("VALOR ID USUARIO EN ESTABLECIMIENTOS");
    print(widget.id_usuario);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset('src/imagenes/logo_justone.png'),
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EleccionAgenda(
                          id_usuario: widget.id_usuario,
                        )),
              );
            },
            child: const Text(
              'Mis reservas',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 150),
            child: TextButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: '¡ Sesión cerrada exitosamente !',
                    backgroundColor: Colors.green,
                    textColor: Colors.white,
                    toastLength: Toast.LENGTH_LONG);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IngresoUsuarios()),
                );
              },
              child: const Text(
                'Cerrar sesión',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 16),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70, bottom: 40),
              child: Text('Selecciona el establecimiento:',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff393839))),
            ),
            Container(
              height: 700,
              child: FutureBuilder(
                  future: get_establecimientos(),
                  builder: (BuildContext ctx, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              _navigateToDetalleEstablecimiento(
                                  snapshot.data[index]);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 600, right: 600, bottom: 50),
                              child: Container(
                                  child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 150,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.network(
                                            snapshot.data[index].imagen,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 50),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(snapshot.data[index].nombre,
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff393839))),
                                            Text(snapshot.data[index].direccion,
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff393839))),
                                            Text(snapshot.data[index].ciudad,
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff393839))),
                                            Text(snapshot.data[index].horario,
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff393839))),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Container(
                                      color: Colors.black,
                                      width: 800,
                                      height: 1,
                                    ),
                                  ),
                                ],
                              )),
                            ),
                          );
                        },
                      );
                    } else {
                      return Transform.scale(
                        scale: 0.3,
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }

  void _navigateToDetalleEstablecimiento(Establecimiento id_establecimiento) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ListaEmpleados(
            establecimiento: id_establecimiento, id_usuario: widget.id_usuario),
      ),
    );
  }
}
