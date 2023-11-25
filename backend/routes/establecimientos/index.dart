import 'dart:io';

import 'package:appweb/establecimiento_repository.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) {
  var mt = context.request.method.value;
  return switch(context.request.method){
    HttpMethod.get => _getEstablecimientos(context),
    HttpMethod.post => _createEstablecimiento(context),
    HttpMethod.delete => _borrarEstablecimiento(context),
    HttpMethod.put => _actualizarEstablecimiento(context),
    _ => Future.value(Response(body: 'esto es un metodo $mt'))
  };
}

Future<Response> _getEstablecimientos(RequestContext context) async{


  final repo = context.read<repositorioEstablecimiento>();
  final estab = await repo.getAll();

  return Future.value(Response.json(
    body: estab
    )
  );
}

Future<Response> _createEstablecimiento(RequestContext context) async{
  final json = (await context.request.json()) as Map<String,dynamic>;
  final nombre = json['nombre'].toString();
  final direccion = json['direccion'].toString();
  final ciudad = json['ciudad'].toString();
  final imagen = json['imagen'].toString();
  final horario = json['horario'].toString();


  // ignore: lines_longer_than_80_chars
  if(nombre == '' || direccion == '' || ciudad == '' || imagen == '' || horario == ''){
    return Response.json(
      body: {
        'mensaje' : 'llena todos los campos para crear establecimiento'
      },
      statusCode: HttpStatus.badRequest
    );
  }



  final repo = context.read<repositorioEstablecimiento>();

  var _er = await repo.ifExist(nombre: nombre);

  if(_er == null){
    final usuario = await repo.crearEstablecimiento(nombre: nombre, direccion: direccion, ciudad: ciudad, imagen: imagen, horario: horario);
    return Response.json(
    body: {
      'mensaje' : 'guardado!',
      'user': usuario
    }
  );
  }else{
    return Response.json(
    body: {
      'mensaje' : 'Este nombre ya esta registrado'
    }
  );
  }

}

Future<Response> _borrarEstablecimiento(RequestContext context) async {

  final json = (await context.request.json()) as Map<String,dynamic>;
  final id = json['id'] as int;
  final nombre = json['nombre'].toString();




  final repo = context.read<repositorioEstablecimiento>();

  var _er = await repo.ifExist(nombre: nombre);

  if(_er == null){
  return Response.json(
    body: {
      'mensaje' : 'Este establecimiento no existe'
    }
  );
  }else{
  await repo.deleteEstablecimiento(id: id);
  return Response.json(
    body: {
      'mensaje' : 'Establecimiento borrado',
    }
  );
  }
}

Future<Response> _actualizarEstablecimiento(RequestContext context) async{
  final json = (await context.request.json()) as Map<String,dynamic>;
  final nombre = json['nombre'].toString();
  final dato = json['dato'].toString();
  final inf = json['inf'].toString();
  final id = json['id'] as int;

  final repo = context.read<repositorioEstablecimiento>();

  if(dato == 'nombre'){
    var _er = await repo.ifExist(nombre: nombre);

    if(_er == null){
    await repo.actualizarEstablecimiento(dato: dato, id: id, inf: inf);
    return Response.json(
      body: {
        'mensaje' : 'establecimiento actualizado'
      }
    );
    }else{
    return Response.json(
      body: {
        'mensaje' : 'el establecimiento ya esta registrado',
      }
    );
    }
  }else{
    var _er = await repo.ifExist(nombre: nombre);
    if(_er == null){
      return Response.json(
        body: {
          'mensaje' : 'Este establecimiento no existe'
        }
      );
    }else{
      await repo.actualizarEstablecimiento(dato: dato, id: id, inf: inf);
      return Response.json(
        body: {
          'mensaje' : 'establecimiento actulizado'
        }
      );
    }
    
  }
}