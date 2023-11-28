// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:frontend/layout/ingreso_usuarios.dart';
import 'package:frontend/layout/mis_reservas_establecimientos.dart';
import 'package:frontend/layout/mis_reservas_profesionales.dart';

class EleccionAgenda extends StatefulWidget {
  final id_usuario;
  const EleccionAgenda({super.key, required this.id_usuario});

  @override
  State<EleccionAgenda> createState() => _EleccionAgendaState();
}

class _EleccionAgendaState extends State<EleccionAgenda> {
  bool _isSelected = false;
  bool _isSelected2 = false;

  @override
  Widget build(BuildContext context) {
    print("VALOR DE ID USUARIO EN VISTA ELECCION AGENDA");
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
              // Acción cuando se presiona "Home"
              Navigator.pushNamed(context, '/');
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.only(top: 70),
            child: Text('¡Bienvenido¡ Por favor elija que agenda quiere ver:',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff393839))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelected = !_isSelected;
                      });
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: _isSelected
                                ? Color(0xff52369d)
                                : Colors.transparent,
                            width: 3.0,
                          )),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 200,
                                  width: 480,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                        fit: BoxFit.cover,
                                        "https://images.unsplash.com/photo-1685640206200-af0e9a82008f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c2NoZWR1bGUlMjBtYW58ZW58MHx8MHx8fDA%3D"),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Text(
                                  "Agendas de Profesional",
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
                                  "Aquí encontrará todas sus agendas realizadas a algun profesional Freelancer",
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelected2 = !_isSelected2;
                      });
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: _isSelected2
                                ? Color(0xff52369d)
                                : Colors.transparent,
                            width: 3.0,
                          )),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 200,
                                  width: 480,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                        fit: BoxFit.cover,
                                        "https://images.unsplash.com/photo-1622296089863-eb7fc530daa8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDN8fGJhcmJlcnxlbnwwfHwwfHx8MA%3D%3D"),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Text(
                                  "Agendas de Establecimiento",
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
                                  "Aquí encontrará todas las reservas realizadas en su establecimiento de confianza.",
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
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 60),
              child: (_isSelected == true || _isSelected2 == true)
                  ? GestureDetector(
                      onTap: () {
                        if (_isSelected == true) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MisReservasProfesionales(
                                      id_usuario: widget.id_usuario,
                                    )),
                          );
                        } else if (_isSelected2 == true) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MisReservasEstablecimientos(
                                      id_usuario: widget.id_usuario,
                                    )),
                          );
                        }
                      },
                      child: Container(
                          height: 50,
                          width: 300,
                          decoration: const BoxDecoration(
                            color: Color(0xff52369d),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Center(
                              child: Text(
                            "Continuar",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ))),
                    )
                  : Container()),
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
