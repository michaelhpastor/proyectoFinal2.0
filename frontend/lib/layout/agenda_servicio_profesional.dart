// ignore_for_file: camel_case_types, library_private_types_in_public_api, prefer_typing_uninitialized_variables, prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/layout/eleccion_agenda.dart';
import 'package:frontend/layout/ingreso_usuarios.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class AgendaServicioProfesional extends StatefulWidget {
  final id_profesional;
  final id_usuario;

  const AgendaServicioProfesional(
      {Key? key, required this.id_profesional, required this.id_usuario})
      : super(key: key);

  @override
  _AgendaServicioProfesionalState createState() =>
      _AgendaServicioProfesionalState();
}

class _AgendaServicioProfesionalState extends State<AgendaServicioProfesional> {
  TextEditingController fecha = TextEditingController();
  TextEditingController hora = TextEditingController();
  TextEditingController lugar = TextEditingController();

  String? selectedService = ''; // Para almacenar el servicio seleccionado
  DateTime selectedDate =
      DateTime.now(); // Para almacenar la fecha seleccionada
  TimeOfDay selectedTime =
      TimeOfDay.now(); // Para almacenar la hora seleccionada
  String? selectedLocation = ''; // Para almacenar el lugar seleccionado
  String? selectedCategory = '';

  Future crearAgenda() async {
    var idProfesional = widget.id_profesional;
    var idUsuario = widget.id_usuario;
    final url =
        'https://flaskprueba-fb9845ade83c.herokuapp.com/agendaEspecialista/$idProfesional/$idUsuario';
    final headers = {
      "Content-Type": "application/json",
    };

    final body = json.encode({
      "fecha": fecha.text,
      "hora": hora.text,
      "lugar": lugar.text,
      'servicio': selectedService
    });

    final response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    var data = json.decode(response.body);
    print("DATA DE AGENDA:");
    print(data);

    if (data['message'] == 'La agenda del especialista creada exitosamente') {
      fecha.clear();
      hora.clear();
      lugar.clear();

      Fluttertoast.showToast(
          msg: '¡ Reserva creada exitosamente !',
          backgroundColor: Colors.green,
          textColor: Colors.white,
          toastLength: Toast.LENGTH_LONG);
    } else {
      if (response.statusCode == 500) {
      } else {}
    }
  }

  @override
  Widget build(BuildContext context) {
    print("AGENDA: VALOR ID_PROFESIONAL");
    print(widget.id_profesional);

    print("AGENDA: VALOR ID_USUARIO");
    print(widget.id_usuario);

    // Asigna valores a la lista de servicios
    var services = [
      'Corte de cabello',
      'Corte de barba',
      'Peinado',
      'Tintura',
      'Asesoría de belleza',
      'Tratamiento para el cabello',
      'Combo corte y peinado',
      'Manicura',
      'Pedicura',
      'Combo manicura y pedicura',
      'Depilación Facial',
      'Depilación Corporal',
      'Maquillaje Profesional',
      'Masaje Estético',
    ];

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
            // Texto de bienvenida
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Text('Realiza tu reserva:',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff393839))),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 500,
                    child: TextField(
                      onTap: () async {
                        final DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: selectedDate,
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2101),
                        );

                        if (pickedDate != null && pickedDate != selectedDate) {
                          setState(() {
                            selectedDate = pickedDate;
                            fecha.text = _formatDate(pickedDate);
                          });
                        }
                      },
                      controller: fecha,
                      style: TextStyle(fontSize: 16),
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 218, 218, 218),
                                width: 2.0),
                          ),
                          hintText: 'Seleccionar fecha',
                          hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 190, 190, 190),
                              fontSize: 16),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(
                                  0xff52369d), // Establece un color transparente para quitar el color azul
                            ),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Container(
                      width: 500,
                      child: TextField(
                        onTap: () async {
                          final TimeOfDay? pickedTime = await showTimePicker(
                            context: context,
                            initialTime: selectedTime,
                          );

                          if (pickedTime != null &&
                              pickedTime != selectedTime) {
                            setState(() {
                              selectedTime = pickedTime;
                              hora.text = _formatTime(pickedTime);
                            });
                          }
                        },
                        controller: hora,
                        style: TextStyle(fontSize: 16),
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 218, 218, 218),
                                  width: 2.0),
                            ),
                            hintText: 'Seleccionar hora',
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 190, 190, 190),
                                fontSize: 16),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(
                                    0xff52369d), // Establece un color transparente para quitar el color azul
                              ),
                            ),
                            floatingLabelBehavior:
                                FloatingLabelBehavior.always),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Container(
                width: 1060,
                child: TextField(
                  onTap: () async {
                    /*     final TimeOfDay? pickedTime = await showTimePicker(
                      context: context,
                      initialTime: selectedTime,
                    );

                    if (pickedTime != null && pickedTime != selectedTime) {
                      setState(() {
                        selectedTime = pickedTime;
                        hora.text = _formatTime(pickedTime);
                      });
                    } */
                  },
                  controller: lugar,
                  style: TextStyle(fontSize: 16),
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 218, 218, 218),
                            width: 2.0),
                      ),
                      hintText: 'Escribir lugar',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 190, 190, 190),
                          fontSize: 16),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                              0xff52369d), // Establece un color transparente para quitar el color azul
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 420, right: 420, top: 50),
              child: Container(
                height: 300, // Ajusta la altura según sea necesario
                child: ListView.builder(
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedService = services[index];
                        });
                      },
                      child: Card(
                        color: selectedService == services[index]
                            ? Color(
                                0xff52369d) // Puedes personalizar el color de fondo cuando está seleccionado
                            : null,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(services[index],
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: selectedService == services[index]
                                      ? Colors.white
                                      : Color(0xff393839))),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: GestureDetector(
                onTap: () {
                  crearAgenda();
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
              ),
            )
          ],
        ),
      ),
/*       persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Just One Click',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Carrera 9 No. 45A - 44'),
                Text('desarrollowebprueba8@gmail.com'),
                Text('3182718849'),
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Acerca de Just One Click',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Contactanos'),
                Text('Acerca de nosotros'),
              ],
            ),
            Row(
              children: [
                Image.network(
                  'https://th.bing.com/th/id/OIP.FSQqD-ceBHOuC8DDnC7TjwHaHa?pid=ImgDet&w=800&h=800&rs=1',
                  height: 50.0,
                  width: 50.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10.0),
                Image.network(
                  'https://th.bing.com/th/id/OIP.WKK-wC7LQNEuUH4qISxGxgHaHa?pid=ImgDet&rs=1',
                  height: 35.0,
                  width: 35.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 20.0),
                Image.network(
                  'https://th.bing.com/th/id/R.2a3c2e00d714005eed1f46469907cae0?rik=CgJtlS84Y22MLg&riu=http%3a%2f%2fwww.lineconect.com.br%2fimages_parceiros%2ffacebook_incone.png&ehk=KmT40jN24pH81lNP3VmNmJmYjxCyhUrpDvz%2fAkU0G9o%3d&risl=&pid=ImgRaw&r=0',
                  height: 30.0,
                  width: 30.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ], */
    );
  }

  String _formatDate(DateTime date) {
    // Puedes personalizar el formato de fecha según tus necesidades
    return '${date.day}/${date.month}/${date.year}';
  }

  String _formatTime(TimeOfDay time) {
    // Puedes personalizar el formato de hora según tus necesidades
    return '${time.hour}:${time.minute}';
  }
}
