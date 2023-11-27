class Autentificar{
  final String correo;
  final String contrasena;

  Autentificar({required this.correo, required this.contrasena});

  Map<String, dynamic> tojson(){
    return {
      'correo': correo,
      'contrasena': contrasena
    };
  }
}