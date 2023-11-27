// ignore_for_file: camel_case_types, library_private_types_in_public_api, prefer_typing_uninitialized_variables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frontend/layout/agenda_servicio.dart';
import 'package:frontend/layout/eleccion_servicio.dart';
import 'package:frontend/layout/lista_establecimientos.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListaEmpleados extends StatefulWidget {
  final Establecimiento establecimiento;
  const ListaEmpleados({Key? key, required this.establecimiento})
      : super(key: key);

  @override
  _ListaEmpleadosState createState() => _ListaEmpleadosState();
}

class Empleado {
  final int id;
  final int idEstablecimiento;
  final String nombre;
  final String apellido;
  final String imagen;
  final String horario;

  Empleado({
    required this.id,
    required this.idEstablecimiento,
    required this.nombre,
    required this.apellido,
    required this.imagen,
    required this.horario,
  });
}

class _ListaEmpleadosState extends State<ListaEmpleados> {
  Map<String, dynamic> toJson(int idEstablecimiento) {
    return {
      "idEstablecimiento": idEstablecimiento,
    };
  }

  Future<List<Empleado>> get_empleados() async {
    var temp = widget.establecimiento.id;
    print("VAR TEMP XD:");
    print(temp);
    var url =
        Uri.https("flaskprueba-fb9845ade83c.herokuapp.com", '/empleados/$temp');
    final response = await http.get(url);
    var responseData = json.decode(response.body);

    print("VALOR DE LA DATA EMPLEADOS");
    print(responseData);
    print(widget.establecimiento.id);

    List<Empleado> establecimientos = [];
    for (var singleUser in responseData) {
      Empleado establecimiento = Empleado(
        id: singleUser['id'],
        idEstablecimiento: singleUser['idEstablecimiento'],
        nombre: singleUser['nombre'],
        apellido: singleUser['apellido'],
        imagen: singleUser['imagen'],
        horario: singleUser['horario'],
      );

      establecimientos.add(establecimiento);
    }

    return establecimientos;
  }

  @override
  Widget build(BuildContext context) {
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
              // Acción cuando se presiona "Home"
              Navigator.pushNamed(context, '/');
            },
            child: const Text(
              'Home',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: TextButton(
              onPressed: () {
                // Acción cuando se presiona "Acerca de Nosotros"
                Navigator.pushNamed(context, '/nosotros');
              },
              child: const Text(
                'Acerca de Nosotros',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: TextButton(
              onPressed: () {
                // Acción cuando se presiona "Iniciar Sesión"
                Navigator.pushNamed(context, '/ingreso');
              },
              child: const Text('Iniciar Sesión',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 100),
            child: TextButton(
              onPressed: () {
                // Acción cuando se presiona "Registrarse"
                Navigator.pushNamed(context, '/registro');
              },
              child: const Text(
                'Registrarse',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 16),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Text('Selecciona el empleado favorito:',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff393839))),
            ),
            Container(
              height: 700,
              child: FutureBuilder(
                  future: get_empleados(),
                  builder: (BuildContext ctx, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              /*   _navigateToDetalleEstablecimiento(
                                  snapshot.data[index]); */
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
                                            Text(snapshot.data[index].id
                                                .toString()),
                                            Text(snapshot.data[index].nombre,
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff393839))),
                                            Text(snapshot.data[index].apellido,
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
                    } else if (snapshot.hasError) {
                      return Text("Error: ${snapshot.error}");
                    } else if (snapshot.hasData == "[]") {
                      return Center(
                          child: Text(
                        "Lo sentimos, no hay usuarios disponibles",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff393839),
                        ),
                      ));
                    } else {
                      return Text("F");
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
/* 
   void _navigateToEleccionServicio(Empleado id_establecimiento) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
           AgendaServicio(empleado: empleado)
      ),
    );
  } */
}
