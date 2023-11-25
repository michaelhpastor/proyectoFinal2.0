

import 'package:appweb/src/generated/prisma/prisma_client.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

class repositorioAgendaEmpleado{
  repositorioAgendaEmpleado(this._db);

  final PrismaClient _db;

  Future<AgendaEmpleados?> ifExist({
    required int id,
  }) async{
    final usuario = await _db.agendaEmpleados.findFirst(where: AgendaEmpleadosWhereInput(
      id: IntFilter(equals: id)
      ),
    );
    return usuario;
  }

  Future<AgendaEmpleados> crearAgendaEmpleado({
    required int idempleado,
    required int idUsuario,
    required String fecha,
    required String hora,
  })async{
    // ignore: lines_longer_than_80_chars
    final agendaEmpleado = await _db.agendaEmpleados.create(data: AgendaEmpleadosCreateInput(idempleado: idempleado, idUsuario: idUsuario, fecha: fecha, hora: hora));
    return agendaEmpleado;
  }

  Future<List<AgendaEmpleados>> getAll(int idempleado) async {
    final list = await _db.agendaEmpleados.findMany();
    List<AgendaEmpleados> agenda = [];

    for(var ag in list.toList()){
      if(ag.idempleado == idempleado){
        agenda.add(ag);
      }
    }

    return agenda;
  }

  int? fetchUserFromToken(String token){
    try{
      final jwt = JWT.verify(token, SecretKey("123456"));
      return jwt.payload as int;
    }on JWTException catch(_){
      return null;
    }
  }

  Future<void> deleteAgendareserva({
    required int id
  })async{
    await _db.agendaEmpleados.delete(where: AgendaEmpleadosWhereUniqueInput(id: id));
  }

  /*

  Future<void> actualizarAgenda({
    required String dato,
    required int id,
    required String inf,
  })async{

    switch(dato){
      case 'idEspecilsita':
        // ignore: lines_longer_than_80_chars
        await _db.agendaEspecialista.update(data: AgendaEspecialistaUpdateInput(idEspecialista: IntFieldUpdateOperationsInput(set: inf)), where: EmpleadosWhereUniqueInput(id: id));
      case 'apellido':
        await _db.empleados.update(data: EmpleadosUpdateInput(nombre: StringFieldUpdateOperationsInput(set: inf)), where: EmpleadosWhereUniqueInput(id: id));
      case 'telefono':
        await _db.empleados.update(data: EmpleadosUpdateInput(nombre: StringFieldUpdateOperationsInput(set: inf)), where: EmpleadosWhereUniqueInput(id: id));
      case 'imagen':
        await _db.empleados.update(data: EmpleadosUpdateInput(nombre: StringFieldUpdateOperationsInput(set: inf)), where: EmpleadosWhereUniqueInput(id: id));       
      case 'horario':
        await _db.empleados.update(data: EmpleadosUpdateInput(nombre: StringFieldUpdateOperationsInput(set: inf)), where: EmpleadosWhereUniqueInput(id: id));
        
    }
  }
  */
}