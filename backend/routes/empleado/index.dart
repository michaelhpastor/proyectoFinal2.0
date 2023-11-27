import 'dart:io';

import 'package:appweb/empelado_repository.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) {
  var mt = context.request.method.value;
  return switch (context.request.method) {
    HttpMethod.post => _getEmpelado(context),
    HttpMethod.put => _createEmpleado(context),
    HttpMethod.delete => _borrarEmpleado(context),
    //HttpMethod.put => _actualizarEspecialista(context),
    _ => Future.value(Response(body: 'esto es un metodo $mt'))
  };
}

Future<Response> _getEmpelado(RequestContext context) async {
  final json = (await context.request.json()) as Map<String, dynamic>;
  final id = json['id'] as int;

  final repo = context.read<repositorioEmpelado>();
  final empleado = await repo.getAll(id);

  return Future.value(Response.json(body: empleado));
}

Future<Response> _borrarEmpleado(RequestContext context) async {
  final json = (await context.request.json()) as Map<String, dynamic>;
  final id = json['id'] as int;

  final repo = context.read<repositorioEmpelado>();

  var _er = await repo.ifExist(id: id);

  if (_er == null) {
    return Response.json(body: {'mensaje': 'Este usuario no existe'});
  } else {
    await repo.deleteEmpelado(id: id);
    return Response.json(body: {
      'mensaje': 'empleado borrado',
    });
  }
}

Future<Response> _createEmpleado(RequestContext context) async {
  final json = (await context.request.json()) as Map<String, dynamic>;
  final id = json['id'] as int;
  final idEstablecimiento = json['idEstablecimiento'] as int;
  final nombre = json['nombre'].toString();
  final apellido = json['apellido'].toString();
  final imagen = json['imagen'].toString();
  final telefono = json['telefono'].toString();
  final horario = json['horario'].toString();

  // ignore: lines_longer_than_80_chars
  if (nombre == '' ||
      apellido == '' ||
      imagen == '' ||
      telefono == '' ||
      horario == '') {
    return Response.json(
        body: {'mensaje': 'llena todos los campos para crear especialista'},
        statusCode: HttpStatus.badRequest);
  }

  final repo = context.read<repositorioEmpelado>();

  var _er = await repo.ifExist(id: id);

  if (_er == null) {
    final empleado = await repo.crearEmpleado(
        idEstablecimiento: idEstablecimiento,
        nombre: nombre,
        apellido: apellido,
        telefono: telefono,
        imagen: imagen,
        horario: horario);
    return Response.json(body: {'mensaje': 'guardado!', 'user': empleado});
  } else {
    return Response.json(body: {'mensaje': 'Este empleado ya esta registrado'});
  }
}

/*
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
*/