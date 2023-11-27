class Usuario {
  final String nombre;
  final String apellido;
  final String cedula;
  final String correo;
  final String contrasena;

  Usuario(
      {required this.nombre,
      required this.apellido,
      required this.cedula,
      required this.correo,
      required this.contrasena});

  Map<String, dynamic> toJson() {
    return {
      'nombre': nombre,
      'apellido': apellido,
      'cedula': cedula,
      'correo': correo,
      'contrasena': contrasena
    };
  }
}
