


import 'dart:io';

import 'package:appweb/agendaEmpleado_reposirtory.dart';

import 'package:dart_frog/dart_frog.dart';


Future<Response> onRequest(RequestContext context) {
  var mt = context.request.method.value;
  return switch(context.request.method){
    HttpMethod.get => _getAgendaEmpleado(context),
    HttpMethod.post => _createAgendaEmpelado(context),
    HttpMethod.delete => _borrarAgendaEmpleado(context),
    //HttpMethod.put => _actualizarEspecialista(context),
    _ => Future.value(Response(body: 'esto es un metodo $mt'))
  };
}

Future<Response> _getAgendaEmpleado(RequestContext context) async{
  final json = (await context.request.json()) as Map<String,dynamic>;
  final id = json['idEmpleado'] as int;

  final repo = context.read<repositorioAgendaEmpleado>();
  final agendaEmpleados = await repo.getAll(id);

  return Future.value(Response.json(
    body: agendaEmpleados
    )
  );
}

Future<Response> _borrarAgendaEmpleado(RequestContext context) async {

  final json = (await context.request.json()) as Map<String,dynamic>;
  final id = json['id'] as int;

  final repo = context.read<repositorioAgendaEmpleado>();

  var _er = await repo.ifExist(id: id);

  if(_er == null){
  return Response.json(
    body: {
      'mensaje' : 'Esta reserva no existe'
    }
  );
  }else{
  await repo.deleteAgendareserva(id: id);
  return Response.json(
    body: {
      'mensaje' : 'reserva borrada borrado',
    }
  );
  }
  
}

Future<Response> _createAgendaEmpelado(RequestContext context) async{
  final json = (await context.request.json()) as Map<String,dynamic>;
  final idempleado = json['idempleado'] as int;
  final idUsuario = json['idusario'] as int;
  final fecha = json['fecha'].toString();
  final hora = json['hora'].toString();



  // ignore: lines_longer_than_80_chars, unrelated_type_equality_checks
  if(idempleado == '' || idUsuario == '' || fecha == '' || hora == ''){
    return Response.json(
      body: {
        'mensaje' : 'llena todos los campos para crear la reserva'
      },
      statusCode: HttpStatus.badRequest
    );
  }



  final repo = context.read<repositorioAgendaEmpleado>();

  final usuario = await repo.crearAgendaEmpleado(idempleado: idempleado, idUsuario: idUsuario, fecha: fecha, hora: hora);
    return Response.json(
    body: {
      'mensaje' : 'guardado!',
      'user': usuario
    }
  );
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
