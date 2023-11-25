

import 'dart:io';

import 'package:appweb/user_repository.dart';
import 'package:dart_frog/dart_frog.dart';


Future<Response> onRequest(RequestContext context) {
  var mt = context.request.method.value;
  return switch(context.request.method){
    HttpMethod.get => _getUsers(context),
    HttpMethod.post => _createUser(context),
    HttpMethod.delete => _borrarUsuario(context),
    HttpMethod.put => _actualizarUsuario(context),
    _ => Future.value(Response(body: 'esto es un metodo $mt'))
  };
}

Future<Response> _getUsers(RequestContext context) async{


  final repo = context.read<repositorioUsuario>();
  final users = await repo.getAll();

  return Future.value(Response.json(
    body: users
    )
  );
}

Future<Response> _borrarUsuario(RequestContext context) async {

  final json = (await context.request.json()) as Map<String,dynamic>;
  final correo = json['correo'].toString();




  final repo = context.read<repositorioUsuario>();

  var _er = await repo.ifExist(correo: correo);

  if(_er == null){
  return Response.json(
    body: {
      'mensaje' : 'Este usuario no existe'
    }
  );
  }else{
  await repo.deleteUsuario(correo: correo);
  return Response.json(
    body: {
      'mensaje' : 'usuario borrado',
    }
  );
  }
  
}

Future<Response> _createUser(RequestContext context) async{
  final json = (await context.request.json()) as Map<String,dynamic>;
  final nombre = json['nombre'].toString();
  final apellido = json['apellido'].toString();
  final cedula = json['cedula'].toString();
  final correo = json['correo'].toString();
  final contrasena = json['contrasena'].toString();


  // ignore: lines_longer_than_80_chars
  if(nombre == '' || apellido == '' || cedula == '' || correo == '' || contrasena == ''){
    return Response.json(
      body: {
        'mensaje' : 'llena todos los campos para crear usuario'
      },
      statusCode: HttpStatus.badRequest
    );
  }



  final repo = context.read<repositorioUsuario>();

  var _er = await repo.ifExist(correo: correo);

  if(_er == null){
    final usuario = await repo.crearUsuario(nombre: nombre, apellido: apellido, cedula: cedula, correo: correo, contrasena: contrasena);
    return Response.json(
    body: {
      'mensaje' : 'guardado!',
      'user': usuario
    }
  );
  }else{
    return Response.json(
    body: {
      'mensaje' : 'Este correo ya esta registrado'
    }
  );
  }

}


Future<Response> _actualizarUsuario(RequestContext context) async{
  final json = (await context.request.json()) as Map<String,dynamic>;
  final correo = json['correo'].toString();
  final dato = json['dato'].toString();
  final inf = json['inf'].toString();

  final repo = context.read<repositorioUsuario>();

  if(dato == 'correo'){
    var _er = await repo.ifExist(correo: inf);

    if(_er == null){
    await repo.actualizarUsuario(dato: dato, correo: correo, inf: inf);
    return Response.json(
      body: {
        'mensaje' : 'usuario actualizado'
      }
    );
    }else{
    return Response.json(
      body: {
        'mensaje' : 'el correo ya esta registrado',
      }
    );
    }
  }else{
    var _er = await repo.ifExist(correo: correo);
    if(_er == null){
      return Response.json(
        body: {
          'mensaje' : 'Este usuario no existe'
        }
      );
    }else{
      await repo.actualizarUsuario(dato: dato, correo: correo, inf: inf);
      return Response.json(
        body: {
          'mensaje' : 'usuario actulizado'
        }
      );
    }
    
  }
}
