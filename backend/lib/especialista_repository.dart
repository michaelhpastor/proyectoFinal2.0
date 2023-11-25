

import 'package:appweb/src/generated/prisma/prisma_client.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

class repositorioESpecialista{
  repositorioESpecialista(this._db);

  final PrismaClient _db;

  Future<Especialistas?> ifExist({
    required int id,
  }) async{
    final usuario = await _db.especialistas.findFirst(where: EspecialistasWhereInput(
      id: IntFilter(equals: id)
      ),
    );
    return usuario;
  }

  Future<Especialistas> crearEspecilsitas({
    required String nombre,
    required String apellido,
    required String telefono,
    required String imagen,
    required String horario,
  })async{
    // ignore: lines_longer_than_80_chars
    final especialista = await _db.especialistas.create(data: EspecialistasCreateInput(nombre: nombre, apellido: apellido, telefono: telefono, imagen: imagen, horario: horario));
    return especialista;
  }

  Future<List<Especialistas>> getAll() async {
    final list = await _db.especialistas.findMany();
    return list.toList();
  }

  int? fetchUserFromToken(String token){
    try{
      final jwt = JWT.verify(token, SecretKey("123456"));
      return jwt.payload as int;
    }on JWTException catch(_){
      return null;
    }
  }

  Future<void> deleteEspecilsita({
    required int id
  })async{
    await _db.especialistas.delete(where: EspecialistasWhereUniqueInput(id: id));
  }

  Future<void> actualizarEspecialistas({
    required String dato,
    required int id,
    required String inf,
  })async{

    switch(dato){
      case 'nombre':
        // ignore: lines_longer_than_80_chars
        await _db.especialistas.update(data: EspecialistasUpdateInput(nombre: StringFieldUpdateOperationsInput(set: inf)), where: EspecialistasWhereUniqueInput(id: id));
      case 'apellido':
        await _db.especialistas.update(data: EspecialistasUpdateInput(apellido: StringFieldUpdateOperationsInput(set: inf)), where: EspecialistasWhereUniqueInput(id: id));
      case 'telefono':
        await _db.especialistas.update(data: EspecialistasUpdateInput(telefono: StringFieldUpdateOperationsInput(set: inf)), where: EspecialistasWhereUniqueInput(id: id));
      case 'imagen':
        await _db.especialistas.update(data: EspecialistasUpdateInput(imagen: StringFieldUpdateOperationsInput(set: inf)), where: EspecialistasWhereUniqueInput(id: id));
      case 'horario':
        await _db.especialistas.update(data: EspecialistasUpdateInput(horario: StringFieldUpdateOperationsInput(set: inf)), where: EspecialistasWhereUniqueInput(id: id));
    }
  }

}