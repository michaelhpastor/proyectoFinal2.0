

import 'dart:io';

import 'package:appweb/especialista_repository.dart';
import 'package:dart_frog/dart_frog.dart';


Future<Response> onRequest(RequestContext context) {
  var mt = context.request.method.value;
  return switch(context.request.method){
    HttpMethod.get => _getEaspecialistas(context),
    HttpMethod.post => _createEspecialista(context),
    HttpMethod.delete => _borrarEspecialsitas(context),
    HttpMethod.put => _actualizarEspecialista(context),
    _ => Future.value(Response(body: 'esto es un metodo $mt'))
  };
}

Future<Response> _getEaspecialistas(RequestContext context) async{
  

  final repo = context.read<repositorioESpecialista>();
  final especialistas = await repo.getAll();

  return Future.value(Response.json(
    body: especialistas
    )
  );
}

Future<Response> _borrarEspecialsitas(RequestContext context) async {

  final json = (await context.request.json()) as Map<String,dynamic>;
  final id = json['id'] as int;




  final repo = context.read<repositorioESpecialista>();

  var _er = await repo.ifExist(id: id);

  if(_er == null){
  return Response.json(
    body: {
      'mensaje' : 'Este usuario no existe'
    }
  );
  }else{
  await repo.deleteEspecilsita(id: id);
  return Response.json(
    body: {
      'mensaje' : 'especialista borrado',
    }
  );
  }
  
}

Future<Response> _createEspecialista(RequestContext context) async{
  final json = (await context.request.json()) as Map<String,dynamic>;
  final id = json['id'] as int;
  final nombre = json['nombre'].toString();
  final apellido = json['apellido'].toString();
  final imagen = json['imagen'].toString();
  final telefono = json['telefono'].toString();
  final horario = json['horario'].toString();


  // ignore: lines_longer_than_80_chars
  if(nombre == '' || apellido == '' || imagen == '' || telefono == '' || horario == ''){
    return Response.json(
      body: {
        'mensaje' : 'llena todos los campos para crear especialista'
      },
      statusCode: HttpStatus.badRequest
    );
  }



  final repo = context.read<repositorioESpecialista>();

  var _er = await repo.ifExist(id: id);

  if(_er == null){
    final usuario = await repo.crearEspecilsitas(nombre: nombre, apellido: apellido, telefono: telefono, imagen: imagen, horario: horario);
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


Future<Response> _actualizarEspecialista(RequestContext context) async{
  final json = (await context.request.json()) as Map<String,dynamic>;
  final id = json['id'] as int;
  final dato = json['dato'].toString();
  final inf = json['inf'].toString();

  final repo = context.read<repositorioESpecialista>();

  if(dato == 'id'){
    var _er = await repo.ifExist(id: id);

    if(_er == null){
    await repo.actualizarEspecialistas(dato: dato, id: id, inf: inf);
    return Response.json(
      body: {
        'mensaje' : 'especialista actualizado'
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
    var _er = await repo.ifExist(id: id);
    if(_er == null){
      return Response.json(
        body: {
          'mensaje' : 'Este usuario no existe'
        }
      );
    }else{
      await repo.actualizarEspecialistas(dato: dato, id: id, inf: inf);
      return Response.json(
        body: {
          'mensaje' : 'usuario actulizado'
        }
      );
    }
    
  }
}

