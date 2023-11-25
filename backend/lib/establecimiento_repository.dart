

import 'package:appweb/src/generated/prisma/prisma_client.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';


class repositorioEstablecimiento{
  repositorioEstablecimiento(this._db);

  final PrismaClient _db;

  Future<Establecimientos?> ifExist({
    required String nombre,
  }) async{
    final usuario = await _db.establecimientos.findFirst(where: EstablecimientosWhereInput(
      nombre: StringFilter(equals: nombre)
      ),
    );
    return usuario;
  }

  Future<Establecimientos> crearEstablecimiento({
    required String nombre,
    required String direccion,
    required String ciudad,
    required String imagen,
    required String horario,
  })async{
    // ignore: lines_longer_than_80_chars
    final establecimiento = await _db.establecimientos.create(data: EstablecimientosCreateInput(nombre: nombre, direccion: direccion, ciudad: ciudad, imagen: imagen, horario: horario));
    return establecimiento;
  }

  Future<List<Establecimientos>> getAll() async {
    final list = await _db.establecimientos.findMany();
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

  Future<void> deleteEstablecimiento({
    required int id
  })async{
    await _db.establecimientos.delete(where: EstablecimientosWhereUniqueInput(id: id));
  }

  Future<void> actualizarEstablecimiento({
    required String dato,
    required int id,
    required String inf,
  })async{

    switch(dato){
      case 'nombre':
        // ignore: lines_longer_than_80_chars
        await _db.establecimientos.update(data: EstablecimientosUpdateInput(nombre: StringFieldUpdateOperationsInput(set: inf)), where: EstablecimientosWhereUniqueInput(id: id));
      case 'direccion':
        await _db.establecimientos.update(data: EstablecimientosUpdateInput(direccion: StringFieldUpdateOperationsInput(set: inf)), where: EstablecimientosWhereUniqueInput(id: id));
      case 'ciudad':
        await _db.establecimientos.update(data: EstablecimientosUpdateInput(ciudad: StringFieldUpdateOperationsInput(set: inf)), where: EstablecimientosWhereUniqueInput(id: id));
      case 'imagen':
        await _db.establecimientos.update(data: EstablecimientosUpdateInput(imagen: StringFieldUpdateOperationsInput(set: inf)), where: EstablecimientosWhereUniqueInput(id: id));
      case 'horario':
        await _db.establecimientos.update(data: EstablecimientosUpdateInput(horario: StringFieldUpdateOperationsInput(set: inf)), where: EstablecimientosWhereUniqueInput(id: id));
    }
  }

}