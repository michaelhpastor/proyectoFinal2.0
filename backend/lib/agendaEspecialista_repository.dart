

import 'package:appweb/src/generated/prisma/prisma_client.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

class repositorioAgendaEspecilista{
  repositorioAgendaEspecilista(this._db);

  final PrismaClient _db;

  Future<AgendaEspecialista?> ifExist({
    required int id,
  }) async{
    final usuario = await _db.agendaEspecialista.findFirst(where: AgendaEspecialistaWhereInput(
      id: IntFilter(equals: id)
      ),
    );
    return usuario;
  }

  Future<AgendaEspecialista> crearAgendaespecialista({
    required int idEspecialista,
    required int idUsuario,
    required String fecha,
    required String hora,
    required String lugar,
  })async{
    // ignore: lines_longer_than_80_chars
    final agendaEspecialista = await _db.agendaEspecialista.create(data: AgendaEspecialistaCreateInput(idEspecialista: idEspecialista, idUsuario: idUsuario, fecha: fecha, hora: hora, lugar: lugar));
    return agendaEspecialista;
  }

  Future<List<AgendaEspecialista>> getAll(int idEspecialista) async {
    final list = await _db.agendaEspecialista.findMany();
    List<AgendaEspecialista> agenda = [];

    for(var ag in list.toList()){
      if(ag.idEspecialista == idEspecialista){
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
    await _db.agendaEspecialista.delete(where: AgendaEspecialistaWhereUniqueInput(id: id));
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