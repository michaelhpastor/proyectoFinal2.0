import 'dart:io';

import 'package:appweb/user_repository.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';


Future<Response> onRequest(RequestContext context) async{
  var mt = context.request.method.value;
  return switch(context.request.method){
    HttpMethod.post => _authUsu(context),
    _ => Future.value(Response(body: 'esto es un metodo $mt'))
  };
}

Future<Response> _authUsu(RequestContext context) async{
  final json = (await context.request.json()) as Map<String,dynamic>;
  final correo = json['correo'].toString();
  final contrasena = json['contrasena'].toString();


  // ignore: lines_longer_than_80_chars
  if(correo == '' || contrasena == ''){
    return Response.json(
      body: {
        'mensaje' : 'llena todos los campos para buscar usuario'
      },
      statusCode: HttpStatus.badRequest
    );
  }

  final repo = context.read<repositorioUsuario>();
  final usuario = await repo.authUsuario(correo: correo, contrasena: contrasena);

  if(usuario==null){
    return Response.json(
      body: {
        'mensaje' : 'usuario no encontrado'
      },
      statusCode: HttpStatus.notFound
    );
  }

  final jwt = JWT(usuario.id);
  final token = jwt.sign(SecretKey('123456'),expiresIn: Duration(days: 0,hours: 0,minutes: 30));

  return Response.json(
    body: {
      'user': usuario.rol
    }
  );
}