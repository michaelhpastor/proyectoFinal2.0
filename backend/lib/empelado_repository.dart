

import 'package:appweb/src/generated/prisma/prisma_client.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

class repositorioEmpelado{
  repositorioEmpelado(this._db);

  final PrismaClient _db;

  Future<Empleados?> ifExist({
    required int id,
  }) async{
    final empleado = await _db.empleados.findFirst(where: EmpleadosWhereInput(
      id: IntFilter(equals: id)
      ),
    );
    return empleado;
  }

  Future<Empleados> crearEmpleado({
    required int idEstablecimiento,
    required String nombre,
    required String apellido,
    required String telefono,
    required String imagen,
    required String horario,
  })async{
    // ignore: lines_longer_than_80_chars
    final empleado = await _db.empleados.create(data: EmpleadosCreateInput(idEstablecimiento: idEstablecimiento, nombre: nombre, apellido: apellido, imagen: imagen, horario: horario));
    return empleado;
  }

  Future<List<Empleados>> getAll(int id) async {
    final list = await _db.empleados.findMany();
    List<Empleados> empleados = [];

    for(var emp in list.toList()){
      if(emp.idEstablecimiento==id){
        empleados.add(emp);
      }
    }

    return empleados;
  }

  int? fetchUserFromToken(String token){
    try{
      final jwt = JWT.verify(token, SecretKey("123456"));
      return jwt.payload as int;
    }on JWTException catch(_){
      return null;
    }
  }

  Future<void> deleteEmpelado({
    required int id
  })async{
    await _db.empleados.delete(where: EmpleadosWhereUniqueInput(id: id));
  }

  Future<void> actualizarEmpleado({
    required String dato,
    required int id,
    required String inf,
  })async{

    switch(dato){
      case 'nombre':
        // ignore: lines_longer_than_80_chars
        await _db.empleados.update(data: EmpleadosUpdateInput(nombre: StringFieldUpdateOperationsInput(set: inf)), where: EmpleadosWhereUniqueInput(id: id));
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

}