// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:frontend/layout/ingreso_usuarios.dart';
import 'package:frontend/layout/lista_establecimientos.dart';
import 'package:frontend/layout/lista_profesionales.dart';

class MisReservasProfesionales extends StatefulWidget {
  final id_usuario;
  const MisReservasProfesionales({super.key, required this.id_usuario});

  @override
  State<MisReservasProfesionales> createState() =>
      _MisReservasProfesionalesState();
}

class AgendaProfesionales {
  final int id;
  final String nombre_especialista;
  final String imagen_especialista;
  final String fecha;
  final String hora;
  final String lugar;
  final String servicio;

  AgendaProfesionales({
    required this.id,
    required this.nombre_especialista,
    required this.imagen_especialista,
    required this.fecha,
    required this.hora,
    required this.lugar,
    required this.servicio,
  });
}

class _MisReservasProfesionalesState extends State<MisReservasProfesionales> {
  Future get_agendaestablecimientos() async {
    var idUsuario = widget.id_usuario;
    var url = Uri.https("flaskprueba-fb9845ade83c.herokuapp.com",
        '/agendaUsuarioEsp/$idUsuario');

    final response = await http.get(url);
    var responseData = json.decode(response.body);

    print("VAR RESPONSEDATA");
    print(responseData);

    List<AgendaProfesionales> profesionales = [];
    for (var singleUser in responseData) {
      AgendaProfesionales establecimiento = AgendaProfesionales(
        id: singleUser['id'],
        nombre_especialista: singleUser['nombre_especialista'],
        imagen_especialista: singleUser['imagen_especialista'],
        fecha: singleUser['fecha'],
        hora: singleUser['hora'],
        lugar: singleUser['lugar'],
        servicio: singleUser['servicio'],
      );

      profesionales.add(establecimiento);
    }

    return profesionales;
  }

  @override
  Widget build(BuildContext context) {
    print("VALOR DE ID USUARIO EN VISTA MIS RESERVAS PROFESIONALES");
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
          Padding(
            padding: const EdgeInsets.only(right: 150),
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.only(top: 70, bottom: 40),
            child: Text(
                '¡Hola! Estas son las reservas que tienes con los especialistas:',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff393839))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 700,
                width: 700,
                child: FutureBuilder(
                    future: get_agendaestablecimientos(),
                    builder: (BuildContext ctx, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Container(
                                          color: Colors.green,
                                          width: 250,
                                          height: 150,
                                          child: Image.network(
                                              snapshot.data[index]
                                                  .imagen_especialista,
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                snapshot.data[index]
                                                    .nombre_especialista,
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff393839))),
                                            Text(snapshot.data[index].fecha,
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff393839))),
                                            Text(snapshot.data[index].hora,
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff393839))),
                                            Text(snapshot.data[index].lugar,
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff393839))),
                                            Text(snapshot.data[index].servicio,
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
              ),

              // LISTA DE AGENDA ESPECIALISTAS
            ],
          )
        ]),
      ),
    );
  }

  Padding customCard(
      bool state, String url, String nombre, String descripcion) {
    return Padding(
      padding: const EdgeInsets.only(left: 60),
      child: GestureDetector(
        onTap: () {
          setState(() {
            state = !state;
          });
        },
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: state ? Colors.red : Colors.transparent,
                width: 2.0,
              )),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  height: 200,
                  width: 480,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(fit: BoxFit.cover, url),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  nombre,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff393839)),
                ),
              ),
              Container(
                width: 480,
                child: Text(
                  descripcion,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff393839)),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
