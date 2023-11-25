// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum UsuariosScalarFieldEnum implements _i1.PrismaEnum {
  id,
  nombre,
  apellido,
  cedula,
  correo,
  contrasena,
  rol;

  @override
  String? get originalName => null;
}

enum EstablecimientosScalarFieldEnum implements _i1.PrismaEnum {
  id,
  nombre,
  direccion,
  ciudad,
  imagen,
  horario;

  @override
  String? get originalName => null;
}

enum EspecialistasScalarFieldEnum implements _i1.PrismaEnum {
  id,
  nombre,
  apellido,
  telefono,
  imagen,
  horario;

  @override
  String? get originalName => null;
}

enum EmpleadosScalarFieldEnum implements _i1.PrismaEnum {
  id,
  idEstablecimiento,
  nombre,
  apellido,
  imagen,
  horario;

  @override
  String? get originalName => null;
}

enum AgendaEspecialistaScalarFieldEnum implements _i1.PrismaEnum {
  id,
  idEspecialista,
  idUsuario,
  fecha,
  hora,
  lugar;

  @override
  String? get originalName => null;
}

enum AgendaEmpleadosScalarFieldEnum implements _i1.PrismaEnum {
  id,
  idempleado,
  idUsuario,
  fecha,
  hora;

  @override
  String? get originalName => null;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class UsuariosWhereInput implements _i1.JsonSerializable {
  const UsuariosWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nombre,
    this.apellido,
    this.cedula,
    this.correo,
    this.contrasena,
    this.rol,
  });

  factory UsuariosWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UsuariosWhereInputFromJson(json);

  final Iterable<UsuariosWhereInput>? AND;

  final Iterable<UsuariosWhereInput>? OR;

  final Iterable<UsuariosWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? nombre;

  final StringFilter? apellido;

  final StringFilter? cedula;

  final StringFilter? correo;

  final StringFilter? contrasena;

  final StringFilter? rol;

  @override
  Map<String, dynamic> toJson() => _$UsuariosWhereInputToJson(this);
}

@_i1.jsonSerializable
class UsuariosOrderByWithRelationInput implements _i1.JsonSerializable {
  const UsuariosOrderByWithRelationInput({
    this.id,
    this.nombre,
    this.apellido,
    this.cedula,
    this.correo,
    this.contrasena,
    this.rol,
  });

  factory UsuariosOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsuariosOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? apellido;

  final SortOrder? cedula;

  final SortOrder? correo;

  final SortOrder? contrasena;

  final SortOrder? rol;

  @override
  Map<String, dynamic> toJson() =>
      _$UsuariosOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class UsuariosWhereUniqueInput implements _i1.JsonSerializable {
  const UsuariosWhereUniqueInput({
    this.id,
    this.correo,
  });

  factory UsuariosWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$UsuariosWhereUniqueInputFromJson(json);

  final int? id;

  final String? correo;

  @override
  Map<String, dynamic> toJson() => _$UsuariosWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class UsuariosOrderByWithAggregationInput implements _i1.JsonSerializable {
  const UsuariosOrderByWithAggregationInput({
    this.id,
    this.nombre,
    this.apellido,
    this.cedula,
    this.correo,
    this.contrasena,
    this.rol,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory UsuariosOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsuariosOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? apellido;

  final SortOrder? cedula;

  final SortOrder? correo;

  final SortOrder? contrasena;

  final SortOrder? rol;

  @JsonKey(name: r'_count')
  final UsuariosCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final UsuariosAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final UsuariosMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final UsuariosMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final UsuariosSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$UsuariosOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class UsuariosScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const UsuariosScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nombre,
    this.apellido,
    this.cedula,
    this.correo,
    this.contrasena,
    this.rol,
  });

  factory UsuariosScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsuariosScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<UsuariosScalarWhereWithAggregatesInput>? AND;

  final Iterable<UsuariosScalarWhereWithAggregatesInput>? OR;

  final Iterable<UsuariosScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final StringWithAggregatesFilter? nombre;

  final StringWithAggregatesFilter? apellido;

  final StringWithAggregatesFilter? cedula;

  final StringWithAggregatesFilter? correo;

  final StringWithAggregatesFilter? contrasena;

  final StringWithAggregatesFilter? rol;

  @override
  Map<String, dynamic> toJson() =>
      _$UsuariosScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosWhereInput implements _i1.JsonSerializable {
  const EstablecimientosWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nombre,
    this.direccion,
    this.ciudad,
    this.imagen,
    this.horario,
  });

  factory EstablecimientosWhereInput.fromJson(Map<String, dynamic> json) =>
      _$EstablecimientosWhereInputFromJson(json);

  final Iterable<EstablecimientosWhereInput>? AND;

  final Iterable<EstablecimientosWhereInput>? OR;

  final Iterable<EstablecimientosWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? nombre;

  final StringFilter? direccion;

  final StringFilter? ciudad;

  final StringFilter? imagen;

  final StringFilter? horario;

  @override
  Map<String, dynamic> toJson() => _$EstablecimientosWhereInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosOrderByWithRelationInput implements _i1.JsonSerializable {
  const EstablecimientosOrderByWithRelationInput({
    this.id,
    this.nombre,
    this.direccion,
    this.ciudad,
    this.imagen,
    this.horario,
  });

  factory EstablecimientosOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$EstablecimientosOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? direccion;

  final SortOrder? ciudad;

  final SortOrder? imagen;

  final SortOrder? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EstablecimientosOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosWhereUniqueInput implements _i1.JsonSerializable {
  const EstablecimientosWhereUniqueInput({this.id});

  factory EstablecimientosWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =>
      _$EstablecimientosWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() =>
      _$EstablecimientosWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosOrderByWithAggregationInput
    implements _i1.JsonSerializable {
  const EstablecimientosOrderByWithAggregationInput({
    this.id,
    this.nombre,
    this.direccion,
    this.ciudad,
    this.imagen,
    this.horario,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory EstablecimientosOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$EstablecimientosOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? direccion;

  final SortOrder? ciudad;

  final SortOrder? imagen;

  final SortOrder? horario;

  @JsonKey(name: r'_count')
  final EstablecimientosCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final EstablecimientosAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final EstablecimientosMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final EstablecimientosMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final EstablecimientosSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$EstablecimientosOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosScalarWhereWithAggregatesInput
    implements _i1.JsonSerializable {
  const EstablecimientosScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nombre,
    this.direccion,
    this.ciudad,
    this.imagen,
    this.horario,
  });

  factory EstablecimientosScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$EstablecimientosScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<EstablecimientosScalarWhereWithAggregatesInput>? AND;

  final Iterable<EstablecimientosScalarWhereWithAggregatesInput>? OR;

  final Iterable<EstablecimientosScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final StringWithAggregatesFilter? nombre;

  final StringWithAggregatesFilter? direccion;

  final StringWithAggregatesFilter? ciudad;

  final StringWithAggregatesFilter? imagen;

  final StringWithAggregatesFilter? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EstablecimientosScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasWhereInput implements _i1.JsonSerializable {
  const EspecialistasWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nombre,
    this.apellido,
    this.telefono,
    this.imagen,
    this.horario,
  });

  factory EspecialistasWhereInput.fromJson(Map<String, dynamic> json) =>
      _$EspecialistasWhereInputFromJson(json);

  final Iterable<EspecialistasWhereInput>? AND;

  final Iterable<EspecialistasWhereInput>? OR;

  final Iterable<EspecialistasWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? nombre;

  final StringFilter? apellido;

  final StringFilter? telefono;

  final StringFilter? imagen;

  final StringFilter? horario;

  @override
  Map<String, dynamic> toJson() => _$EspecialistasWhereInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasOrderByWithRelationInput implements _i1.JsonSerializable {
  const EspecialistasOrderByWithRelationInput({
    this.id,
    this.nombre,
    this.apellido,
    this.telefono,
    this.imagen,
    this.horario,
  });

  factory EspecialistasOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$EspecialistasOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? apellido;

  final SortOrder? telefono;

  final SortOrder? imagen;

  final SortOrder? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EspecialistasOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasWhereUniqueInput implements _i1.JsonSerializable {
  const EspecialistasWhereUniqueInput({this.id});

  factory EspecialistasWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$EspecialistasWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() => _$EspecialistasWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasOrderByWithAggregationInput implements _i1.JsonSerializable {
  const EspecialistasOrderByWithAggregationInput({
    this.id,
    this.nombre,
    this.apellido,
    this.telefono,
    this.imagen,
    this.horario,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory EspecialistasOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$EspecialistasOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? apellido;

  final SortOrder? telefono;

  final SortOrder? imagen;

  final SortOrder? horario;

  @JsonKey(name: r'_count')
  final EspecialistasCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final EspecialistasAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final EspecialistasMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final EspecialistasMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final EspecialistasSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$EspecialistasOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasScalarWhereWithAggregatesInput
    implements _i1.JsonSerializable {
  const EspecialistasScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nombre,
    this.apellido,
    this.telefono,
    this.imagen,
    this.horario,
  });

  factory EspecialistasScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$EspecialistasScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<EspecialistasScalarWhereWithAggregatesInput>? AND;

  final Iterable<EspecialistasScalarWhereWithAggregatesInput>? OR;

  final Iterable<EspecialistasScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final StringWithAggregatesFilter? nombre;

  final StringWithAggregatesFilter? apellido;

  final StringWithAggregatesFilter? telefono;

  final StringWithAggregatesFilter? imagen;

  final StringWithAggregatesFilter? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EspecialistasScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosWhereInput implements _i1.JsonSerializable {
  const EmpleadosWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.idEstablecimiento,
    this.nombre,
    this.apellido,
    this.imagen,
    this.horario,
  });

  factory EmpleadosWhereInput.fromJson(Map<String, dynamic> json) =>
      _$EmpleadosWhereInputFromJson(json);

  final Iterable<EmpleadosWhereInput>? AND;

  final Iterable<EmpleadosWhereInput>? OR;

  final Iterable<EmpleadosWhereInput>? NOT;

  final IntFilter? id;

  final IntFilter? idEstablecimiento;

  final StringFilter? nombre;

  final StringFilter? apellido;

  final StringFilter? imagen;

  final StringFilter? horario;

  @override
  Map<String, dynamic> toJson() => _$EmpleadosWhereInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosOrderByWithRelationInput implements _i1.JsonSerializable {
  const EmpleadosOrderByWithRelationInput({
    this.id,
    this.idEstablecimiento,
    this.nombre,
    this.apellido,
    this.imagen,
    this.horario,
  });

  factory EmpleadosOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$EmpleadosOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idEstablecimiento;

  final SortOrder? nombre;

  final SortOrder? apellido;

  final SortOrder? imagen;

  final SortOrder? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EmpleadosOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosWhereUniqueInput implements _i1.JsonSerializable {
  const EmpleadosWhereUniqueInput({this.id});

  factory EmpleadosWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$EmpleadosWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() => _$EmpleadosWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosOrderByWithAggregationInput implements _i1.JsonSerializable {
  const EmpleadosOrderByWithAggregationInput({
    this.id,
    this.idEstablecimiento,
    this.nombre,
    this.apellido,
    this.imagen,
    this.horario,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory EmpleadosOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$EmpleadosOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idEstablecimiento;

  final SortOrder? nombre;

  final SortOrder? apellido;

  final SortOrder? imagen;

  final SortOrder? horario;

  @JsonKey(name: r'_count')
  final EmpleadosCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final EmpleadosAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final EmpleadosMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final EmpleadosMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final EmpleadosSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$EmpleadosOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const EmpleadosScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.idEstablecimiento,
    this.nombre,
    this.apellido,
    this.imagen,
    this.horario,
  });

  factory EmpleadosScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$EmpleadosScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<EmpleadosScalarWhereWithAggregatesInput>? AND;

  final Iterable<EmpleadosScalarWhereWithAggregatesInput>? OR;

  final Iterable<EmpleadosScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final IntWithAggregatesFilter? idEstablecimiento;

  final StringWithAggregatesFilter? nombre;

  final StringWithAggregatesFilter? apellido;

  final StringWithAggregatesFilter? imagen;

  final StringWithAggregatesFilter? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EmpleadosScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaWhereInput implements _i1.JsonSerializable {
  const AgendaEspecialistaWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.idEspecialista,
    this.idUsuario,
    this.fecha,
    this.hora,
    this.lugar,
  });

  factory AgendaEspecialistaWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AgendaEspecialistaWhereInputFromJson(json);

  final Iterable<AgendaEspecialistaWhereInput>? AND;

  final Iterable<AgendaEspecialistaWhereInput>? OR;

  final Iterable<AgendaEspecialistaWhereInput>? NOT;

  final IntFilter? id;

  final IntFilter? idEspecialista;

  final IntFilter? idUsuario;

  final StringFilter? fecha;

  final StringFilter? hora;

  final StringFilter? lugar;

  @override
  Map<String, dynamic> toJson() => _$AgendaEspecialistaWhereInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaOrderByWithRelationInput
    implements _i1.JsonSerializable {
  const AgendaEspecialistaOrderByWithRelationInput({
    this.id,
    this.idEspecialista,
    this.idUsuario,
    this.fecha,
    this.hora,
    this.lugar,
  });

  factory AgendaEspecialistaOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEspecialistaOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idEspecialista;

  final SortOrder? idUsuario;

  final SortOrder? fecha;

  final SortOrder? hora;

  final SortOrder? lugar;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEspecialistaOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaWhereUniqueInput implements _i1.JsonSerializable {
  const AgendaEspecialistaWhereUniqueInput({this.id});

  factory AgendaEspecialistaWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEspecialistaWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEspecialistaWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaOrderByWithAggregationInput
    implements _i1.JsonSerializable {
  const AgendaEspecialistaOrderByWithAggregationInput({
    this.id,
    this.idEspecialista,
    this.idUsuario,
    this.fecha,
    this.hora,
    this.lugar,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory AgendaEspecialistaOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEspecialistaOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idEspecialista;

  final SortOrder? idUsuario;

  final SortOrder? fecha;

  final SortOrder? hora;

  final SortOrder? lugar;

  @JsonKey(name: r'_count')
  final AgendaEspecialistaCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final AgendaEspecialistaAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final AgendaEspecialistaMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final AgendaEspecialistaMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final AgendaEspecialistaSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEspecialistaOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaScalarWhereWithAggregatesInput
    implements _i1.JsonSerializable {
  const AgendaEspecialistaScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.idEspecialista,
    this.idUsuario,
    this.fecha,
    this.hora,
    this.lugar,
  });

  factory AgendaEspecialistaScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEspecialistaScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<AgendaEspecialistaScalarWhereWithAggregatesInput>? AND;

  final Iterable<AgendaEspecialistaScalarWhereWithAggregatesInput>? OR;

  final Iterable<AgendaEspecialistaScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final IntWithAggregatesFilter? idEspecialista;

  final IntWithAggregatesFilter? idUsuario;

  final StringWithAggregatesFilter? fecha;

  final StringWithAggregatesFilter? hora;

  final StringWithAggregatesFilter? lugar;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEspecialistaScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosWhereInput implements _i1.JsonSerializable {
  const AgendaEmpleadosWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.idempleado,
    this.idUsuario,
    this.fecha,
    this.hora,
  });

  factory AgendaEmpleadosWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AgendaEmpleadosWhereInputFromJson(json);

  final Iterable<AgendaEmpleadosWhereInput>? AND;

  final Iterable<AgendaEmpleadosWhereInput>? OR;

  final Iterable<AgendaEmpleadosWhereInput>? NOT;

  final IntFilter? id;

  final IntFilter? idempleado;

  final IntFilter? idUsuario;

  final StringFilter? fecha;

  final StringFilter? hora;

  @override
  Map<String, dynamic> toJson() => _$AgendaEmpleadosWhereInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosOrderByWithRelationInput implements _i1.JsonSerializable {
  const AgendaEmpleadosOrderByWithRelationInput({
    this.id,
    this.idempleado,
    this.idUsuario,
    this.fecha,
    this.hora,
  });

  factory AgendaEmpleadosOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEmpleadosOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idempleado;

  final SortOrder? idUsuario;

  final SortOrder? fecha;

  final SortOrder? hora;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEmpleadosOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosWhereUniqueInput implements _i1.JsonSerializable {
  const AgendaEmpleadosWhereUniqueInput({this.id});

  factory AgendaEmpleadosWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$AgendaEmpleadosWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEmpleadosWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosOrderByWithAggregationInput
    implements _i1.JsonSerializable {
  const AgendaEmpleadosOrderByWithAggregationInput({
    this.id,
    this.idempleado,
    this.idUsuario,
    this.fecha,
    this.hora,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory AgendaEmpleadosOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEmpleadosOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idempleado;

  final SortOrder? idUsuario;

  final SortOrder? fecha;

  final SortOrder? hora;

  @JsonKey(name: r'_count')
  final AgendaEmpleadosCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final AgendaEmpleadosAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final AgendaEmpleadosMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final AgendaEmpleadosMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final AgendaEmpleadosSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEmpleadosOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosScalarWhereWithAggregatesInput
    implements _i1.JsonSerializable {
  const AgendaEmpleadosScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.idempleado,
    this.idUsuario,
    this.fecha,
    this.hora,
  });

  factory AgendaEmpleadosScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEmpleadosScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<AgendaEmpleadosScalarWhereWithAggregatesInput>? AND;

  final Iterable<AgendaEmpleadosScalarWhereWithAggregatesInput>? OR;

  final Iterable<AgendaEmpleadosScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final IntWithAggregatesFilter? idempleado;

  final IntWithAggregatesFilter? idUsuario;

  final StringWithAggregatesFilter? fecha;

  final StringWithAggregatesFilter? hora;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEmpleadosScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class UsuariosCreateInput implements _i1.JsonSerializable {
  const UsuariosCreateInput({
    required this.nombre,
    required this.apellido,
    required this.cedula,
    required this.correo,
    required this.contrasena,
    required this.rol,
  });

  factory UsuariosCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UsuariosCreateInputFromJson(json);

  final String nombre;

  final String apellido;

  final String cedula;

  final String correo;

  final String contrasena;

  final String rol;

  @override
  Map<String, dynamic> toJson() => _$UsuariosCreateInputToJson(this);
}

@_i1.jsonSerializable
class UsuariosUncheckedCreateInput implements _i1.JsonSerializable {
  const UsuariosUncheckedCreateInput({
    this.id,
    required this.nombre,
    required this.apellido,
    required this.cedula,
    required this.correo,
    required this.contrasena,
    required this.rol,
  });

  factory UsuariosUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UsuariosUncheckedCreateInputFromJson(json);

  final int? id;

  final String nombre;

  final String apellido;

  final String cedula;

  final String correo;

  final String contrasena;

  final String rol;

  @override
  Map<String, dynamic> toJson() => _$UsuariosUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class UsuariosUpdateInput implements _i1.JsonSerializable {
  const UsuariosUpdateInput({
    this.nombre,
    this.apellido,
    this.cedula,
    this.correo,
    this.contrasena,
    this.rol,
  });

  factory UsuariosUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UsuariosUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? apellido;

  final StringFieldUpdateOperationsInput? cedula;

  final StringFieldUpdateOperationsInput? correo;

  final StringFieldUpdateOperationsInput? contrasena;

  final StringFieldUpdateOperationsInput? rol;

  @override
  Map<String, dynamic> toJson() => _$UsuariosUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UsuariosUncheckedUpdateInput implements _i1.JsonSerializable {
  const UsuariosUncheckedUpdateInput({
    this.id,
    this.nombre,
    this.apellido,
    this.cedula,
    this.correo,
    this.contrasena,
    this.rol,
  });

  factory UsuariosUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UsuariosUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? apellido;

  final StringFieldUpdateOperationsInput? cedula;

  final StringFieldUpdateOperationsInput? correo;

  final StringFieldUpdateOperationsInput? contrasena;

  final StringFieldUpdateOperationsInput? rol;

  @override
  Map<String, dynamic> toJson() => _$UsuariosUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UsuariosCreateManyInput implements _i1.JsonSerializable {
  const UsuariosCreateManyInput({
    this.id,
    required this.nombre,
    required this.apellido,
    required this.cedula,
    required this.correo,
    required this.contrasena,
    required this.rol,
  });

  factory UsuariosCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UsuariosCreateManyInputFromJson(json);

  final int? id;

  final String nombre;

  final String apellido;

  final String cedula;

  final String correo;

  final String contrasena;

  final String rol;

  @override
  Map<String, dynamic> toJson() => _$UsuariosCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class UsuariosUpdateManyMutationInput implements _i1.JsonSerializable {
  const UsuariosUpdateManyMutationInput({
    this.nombre,
    this.apellido,
    this.cedula,
    this.correo,
    this.contrasena,
    this.rol,
  });

  factory UsuariosUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$UsuariosUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? apellido;

  final StringFieldUpdateOperationsInput? cedula;

  final StringFieldUpdateOperationsInput? correo;

  final StringFieldUpdateOperationsInput? contrasena;

  final StringFieldUpdateOperationsInput? rol;

  @override
  Map<String, dynamic> toJson() =>
      _$UsuariosUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class UsuariosUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const UsuariosUncheckedUpdateManyInput({
    this.id,
    this.nombre,
    this.apellido,
    this.cedula,
    this.correo,
    this.contrasena,
    this.rol,
  });

  factory UsuariosUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsuariosUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? apellido;

  final StringFieldUpdateOperationsInput? cedula;

  final StringFieldUpdateOperationsInput? correo;

  final StringFieldUpdateOperationsInput? contrasena;

  final StringFieldUpdateOperationsInput? rol;

  @override
  Map<String, dynamic> toJson() =>
      _$UsuariosUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosCreateInput implements _i1.JsonSerializable {
  const EstablecimientosCreateInput({
    required this.nombre,
    required this.direccion,
    required this.ciudad,
    required this.imagen,
    required this.horario,
  });

  factory EstablecimientosCreateInput.fromJson(Map<String, dynamic> json) =>
      _$EstablecimientosCreateInputFromJson(json);

  final String nombre;

  final String direccion;

  final String ciudad;

  final String imagen;

  final String horario;

  @override
  Map<String, dynamic> toJson() => _$EstablecimientosCreateInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosUncheckedCreateInput implements _i1.JsonSerializable {
  const EstablecimientosUncheckedCreateInput({
    this.id,
    required this.nombre,
    required this.direccion,
    required this.ciudad,
    required this.imagen,
    required this.horario,
  });

  factory EstablecimientosUncheckedCreateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EstablecimientosUncheckedCreateInputFromJson(json);

  final int? id;

  final String nombre;

  final String direccion;

  final String ciudad;

  final String imagen;

  final String horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EstablecimientosUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosUpdateInput implements _i1.JsonSerializable {
  const EstablecimientosUpdateInput({
    this.nombre,
    this.direccion,
    this.ciudad,
    this.imagen,
    this.horario,
  });

  factory EstablecimientosUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$EstablecimientosUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? direccion;

  final StringFieldUpdateOperationsInput? ciudad;

  final StringFieldUpdateOperationsInput? imagen;

  final StringFieldUpdateOperationsInput? horario;

  @override
  Map<String, dynamic> toJson() => _$EstablecimientosUpdateInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosUncheckedUpdateInput implements _i1.JsonSerializable {
  const EstablecimientosUncheckedUpdateInput({
    this.id,
    this.nombre,
    this.direccion,
    this.ciudad,
    this.imagen,
    this.horario,
  });

  factory EstablecimientosUncheckedUpdateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EstablecimientosUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? direccion;

  final StringFieldUpdateOperationsInput? ciudad;

  final StringFieldUpdateOperationsInput? imagen;

  final StringFieldUpdateOperationsInput? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EstablecimientosUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosCreateManyInput implements _i1.JsonSerializable {
  const EstablecimientosCreateManyInput({
    this.id,
    required this.nombre,
    required this.direccion,
    required this.ciudad,
    required this.imagen,
    required this.horario,
  });

  factory EstablecimientosCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$EstablecimientosCreateManyInputFromJson(json);

  final int? id;

  final String nombre;

  final String direccion;

  final String ciudad;

  final String imagen;

  final String horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EstablecimientosCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosUpdateManyMutationInput implements _i1.JsonSerializable {
  const EstablecimientosUpdateManyMutationInput({
    this.nombre,
    this.direccion,
    this.ciudad,
    this.imagen,
    this.horario,
  });

  factory EstablecimientosUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$EstablecimientosUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? direccion;

  final StringFieldUpdateOperationsInput? ciudad;

  final StringFieldUpdateOperationsInput? imagen;

  final StringFieldUpdateOperationsInput? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EstablecimientosUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const EstablecimientosUncheckedUpdateManyInput({
    this.id,
    this.nombre,
    this.direccion,
    this.ciudad,
    this.imagen,
    this.horario,
  });

  factory EstablecimientosUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$EstablecimientosUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? direccion;

  final StringFieldUpdateOperationsInput? ciudad;

  final StringFieldUpdateOperationsInput? imagen;

  final StringFieldUpdateOperationsInput? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EstablecimientosUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasCreateInput implements _i1.JsonSerializable {
  const EspecialistasCreateInput({
    required this.nombre,
    required this.apellido,
    required this.telefono,
    required this.imagen,
    required this.horario,
  });

  factory EspecialistasCreateInput.fromJson(Map<String, dynamic> json) =>
      _$EspecialistasCreateInputFromJson(json);

  final String nombre;

  final String apellido;

  final String telefono;

  final String imagen;

  final String horario;

  @override
  Map<String, dynamic> toJson() => _$EspecialistasCreateInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasUncheckedCreateInput implements _i1.JsonSerializable {
  const EspecialistasUncheckedCreateInput({
    this.id,
    required this.nombre,
    required this.apellido,
    required this.telefono,
    required this.imagen,
    required this.horario,
  });

  factory EspecialistasUncheckedCreateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EspecialistasUncheckedCreateInputFromJson(json);

  final int? id;

  final String nombre;

  final String apellido;

  final String telefono;

  final String imagen;

  final String horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EspecialistasUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasUpdateInput implements _i1.JsonSerializable {
  const EspecialistasUpdateInput({
    this.nombre,
    this.apellido,
    this.telefono,
    this.imagen,
    this.horario,
  });

  factory EspecialistasUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$EspecialistasUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? apellido;

  final StringFieldUpdateOperationsInput? telefono;

  final StringFieldUpdateOperationsInput? imagen;

  final StringFieldUpdateOperationsInput? horario;

  @override
  Map<String, dynamic> toJson() => _$EspecialistasUpdateInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasUncheckedUpdateInput implements _i1.JsonSerializable {
  const EspecialistasUncheckedUpdateInput({
    this.id,
    this.nombre,
    this.apellido,
    this.telefono,
    this.imagen,
    this.horario,
  });

  factory EspecialistasUncheckedUpdateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EspecialistasUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? apellido;

  final StringFieldUpdateOperationsInput? telefono;

  final StringFieldUpdateOperationsInput? imagen;

  final StringFieldUpdateOperationsInput? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EspecialistasUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasCreateManyInput implements _i1.JsonSerializable {
  const EspecialistasCreateManyInput({
    this.id,
    required this.nombre,
    required this.apellido,
    required this.telefono,
    required this.imagen,
    required this.horario,
  });

  factory EspecialistasCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$EspecialistasCreateManyInputFromJson(json);

  final int? id;

  final String nombre;

  final String apellido;

  final String telefono;

  final String imagen;

  final String horario;

  @override
  Map<String, dynamic> toJson() => _$EspecialistasCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasUpdateManyMutationInput implements _i1.JsonSerializable {
  const EspecialistasUpdateManyMutationInput({
    this.nombre,
    this.apellido,
    this.telefono,
    this.imagen,
    this.horario,
  });

  factory EspecialistasUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$EspecialistasUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? apellido;

  final StringFieldUpdateOperationsInput? telefono;

  final StringFieldUpdateOperationsInput? imagen;

  final StringFieldUpdateOperationsInput? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EspecialistasUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const EspecialistasUncheckedUpdateManyInput({
    this.id,
    this.nombre,
    this.apellido,
    this.telefono,
    this.imagen,
    this.horario,
  });

  factory EspecialistasUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$EspecialistasUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? apellido;

  final StringFieldUpdateOperationsInput? telefono;

  final StringFieldUpdateOperationsInput? imagen;

  final StringFieldUpdateOperationsInput? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EspecialistasUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosCreateInput implements _i1.JsonSerializable {
  const EmpleadosCreateInput({
    required this.idEstablecimiento,
    required this.nombre,
    required this.apellido,
    required this.imagen,
    required this.horario,
  });

  factory EmpleadosCreateInput.fromJson(Map<String, dynamic> json) =>
      _$EmpleadosCreateInputFromJson(json);

  final int idEstablecimiento;

  final String nombre;

  final String apellido;

  final String imagen;

  final String horario;

  @override
  Map<String, dynamic> toJson() => _$EmpleadosCreateInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosUncheckedCreateInput implements _i1.JsonSerializable {
  const EmpleadosUncheckedCreateInput({
    this.id,
    required this.idEstablecimiento,
    required this.nombre,
    required this.apellido,
    required this.imagen,
    required this.horario,
  });

  factory EmpleadosUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$EmpleadosUncheckedCreateInputFromJson(json);

  final int? id;

  final int idEstablecimiento;

  final String nombre;

  final String apellido;

  final String imagen;

  final String horario;

  @override
  Map<String, dynamic> toJson() => _$EmpleadosUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosUpdateInput implements _i1.JsonSerializable {
  const EmpleadosUpdateInput({
    this.idEstablecimiento,
    this.nombre,
    this.apellido,
    this.imagen,
    this.horario,
  });

  factory EmpleadosUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$EmpleadosUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? idEstablecimiento;

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? apellido;

  final StringFieldUpdateOperationsInput? imagen;

  final StringFieldUpdateOperationsInput? horario;

  @override
  Map<String, dynamic> toJson() => _$EmpleadosUpdateInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosUncheckedUpdateInput implements _i1.JsonSerializable {
  const EmpleadosUncheckedUpdateInput({
    this.id,
    this.idEstablecimiento,
    this.nombre,
    this.apellido,
    this.imagen,
    this.horario,
  });

  factory EmpleadosUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$EmpleadosUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final IntFieldUpdateOperationsInput? idEstablecimiento;

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? apellido;

  final StringFieldUpdateOperationsInput? imagen;

  final StringFieldUpdateOperationsInput? horario;

  @override
  Map<String, dynamic> toJson() => _$EmpleadosUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosCreateManyInput implements _i1.JsonSerializable {
  const EmpleadosCreateManyInput({
    this.id,
    required this.idEstablecimiento,
    required this.nombre,
    required this.apellido,
    required this.imagen,
    required this.horario,
  });

  factory EmpleadosCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$EmpleadosCreateManyInputFromJson(json);

  final int? id;

  final int idEstablecimiento;

  final String nombre;

  final String apellido;

  final String imagen;

  final String horario;

  @override
  Map<String, dynamic> toJson() => _$EmpleadosCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosUpdateManyMutationInput implements _i1.JsonSerializable {
  const EmpleadosUpdateManyMutationInput({
    this.idEstablecimiento,
    this.nombre,
    this.apellido,
    this.imagen,
    this.horario,
  });

  factory EmpleadosUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$EmpleadosUpdateManyMutationInputFromJson(json);

  final IntFieldUpdateOperationsInput? idEstablecimiento;

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? apellido;

  final StringFieldUpdateOperationsInput? imagen;

  final StringFieldUpdateOperationsInput? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EmpleadosUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const EmpleadosUncheckedUpdateManyInput({
    this.id,
    this.idEstablecimiento,
    this.nombre,
    this.apellido,
    this.imagen,
    this.horario,
  });

  factory EmpleadosUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$EmpleadosUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final IntFieldUpdateOperationsInput? idEstablecimiento;

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? apellido;

  final StringFieldUpdateOperationsInput? imagen;

  final StringFieldUpdateOperationsInput? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EmpleadosUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaCreateInput implements _i1.JsonSerializable {
  const AgendaEspecialistaCreateInput({
    required this.idEspecialista,
    required this.idUsuario,
    required this.fecha,
    required this.hora,
    required this.lugar,
  });

  factory AgendaEspecialistaCreateInput.fromJson(Map<String, dynamic> json) =>
      _$AgendaEspecialistaCreateInputFromJson(json);

  final int idEspecialista;

  final int idUsuario;

  final String fecha;

  final String hora;

  final String lugar;

  @override
  Map<String, dynamic> toJson() => _$AgendaEspecialistaCreateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaUncheckedCreateInput implements _i1.JsonSerializable {
  const AgendaEspecialistaUncheckedCreateInput({
    this.id,
    required this.idEspecialista,
    required this.idUsuario,
    required this.fecha,
    required this.hora,
    required this.lugar,
  });

  factory AgendaEspecialistaUncheckedCreateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEspecialistaUncheckedCreateInputFromJson(json);

  final int? id;

  final int idEspecialista;

  final int idUsuario;

  final String fecha;

  final String hora;

  final String lugar;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEspecialistaUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaUpdateInput implements _i1.JsonSerializable {
  const AgendaEspecialistaUpdateInput({
    this.idEspecialista,
    this.idUsuario,
    this.fecha,
    this.hora,
    this.lugar,
  });

  factory AgendaEspecialistaUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$AgendaEspecialistaUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? idEspecialista;

  final IntFieldUpdateOperationsInput? idUsuario;

  final StringFieldUpdateOperationsInput? fecha;

  final StringFieldUpdateOperationsInput? hora;

  final StringFieldUpdateOperationsInput? lugar;

  @override
  Map<String, dynamic> toJson() => _$AgendaEspecialistaUpdateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaUncheckedUpdateInput implements _i1.JsonSerializable {
  const AgendaEspecialistaUncheckedUpdateInput({
    this.id,
    this.idEspecialista,
    this.idUsuario,
    this.fecha,
    this.hora,
    this.lugar,
  });

  factory AgendaEspecialistaUncheckedUpdateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEspecialistaUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final IntFieldUpdateOperationsInput? idEspecialista;

  final IntFieldUpdateOperationsInput? idUsuario;

  final StringFieldUpdateOperationsInput? fecha;

  final StringFieldUpdateOperationsInput? hora;

  final StringFieldUpdateOperationsInput? lugar;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEspecialistaUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaCreateManyInput implements _i1.JsonSerializable {
  const AgendaEspecialistaCreateManyInput({
    this.id,
    required this.idEspecialista,
    required this.idUsuario,
    required this.fecha,
    required this.hora,
    required this.lugar,
  });

  factory AgendaEspecialistaCreateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEspecialistaCreateManyInputFromJson(json);

  final int? id;

  final int idEspecialista;

  final int idUsuario;

  final String fecha;

  final String hora;

  final String lugar;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEspecialistaCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaUpdateManyMutationInput
    implements _i1.JsonSerializable {
  const AgendaEspecialistaUpdateManyMutationInput({
    this.idEspecialista,
    this.idUsuario,
    this.fecha,
    this.hora,
    this.lugar,
  });

  factory AgendaEspecialistaUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEspecialistaUpdateManyMutationInputFromJson(json);

  final IntFieldUpdateOperationsInput? idEspecialista;

  final IntFieldUpdateOperationsInput? idUsuario;

  final StringFieldUpdateOperationsInput? fecha;

  final StringFieldUpdateOperationsInput? hora;

  final StringFieldUpdateOperationsInput? lugar;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEspecialistaUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaUncheckedUpdateManyInput
    implements _i1.JsonSerializable {
  const AgendaEspecialistaUncheckedUpdateManyInput({
    this.id,
    this.idEspecialista,
    this.idUsuario,
    this.fecha,
    this.hora,
    this.lugar,
  });

  factory AgendaEspecialistaUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEspecialistaUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final IntFieldUpdateOperationsInput? idEspecialista;

  final IntFieldUpdateOperationsInput? idUsuario;

  final StringFieldUpdateOperationsInput? fecha;

  final StringFieldUpdateOperationsInput? hora;

  final StringFieldUpdateOperationsInput? lugar;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEspecialistaUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosCreateInput implements _i1.JsonSerializable {
  const AgendaEmpleadosCreateInput({
    required this.idempleado,
    required this.idUsuario,
    required this.fecha,
    required this.hora,
  });

  factory AgendaEmpleadosCreateInput.fromJson(Map<String, dynamic> json) =>
      _$AgendaEmpleadosCreateInputFromJson(json);

  final int idempleado;

  final int idUsuario;

  final String fecha;

  final String hora;

  @override
  Map<String, dynamic> toJson() => _$AgendaEmpleadosCreateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosUncheckedCreateInput implements _i1.JsonSerializable {
  const AgendaEmpleadosUncheckedCreateInput({
    this.id,
    required this.idempleado,
    required this.idUsuario,
    required this.fecha,
    required this.hora,
  });

  factory AgendaEmpleadosUncheckedCreateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEmpleadosUncheckedCreateInputFromJson(json);

  final int? id;

  final int idempleado;

  final int idUsuario;

  final String fecha;

  final String hora;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEmpleadosUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosUpdateInput implements _i1.JsonSerializable {
  const AgendaEmpleadosUpdateInput({
    this.idempleado,
    this.idUsuario,
    this.fecha,
    this.hora,
  });

  factory AgendaEmpleadosUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$AgendaEmpleadosUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? idempleado;

  final IntFieldUpdateOperationsInput? idUsuario;

  final StringFieldUpdateOperationsInput? fecha;

  final StringFieldUpdateOperationsInput? hora;

  @override
  Map<String, dynamic> toJson() => _$AgendaEmpleadosUpdateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosUncheckedUpdateInput implements _i1.JsonSerializable {
  const AgendaEmpleadosUncheckedUpdateInput({
    this.id,
    this.idempleado,
    this.idUsuario,
    this.fecha,
    this.hora,
  });

  factory AgendaEmpleadosUncheckedUpdateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEmpleadosUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final IntFieldUpdateOperationsInput? idempleado;

  final IntFieldUpdateOperationsInput? idUsuario;

  final StringFieldUpdateOperationsInput? fecha;

  final StringFieldUpdateOperationsInput? hora;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEmpleadosUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosCreateManyInput implements _i1.JsonSerializable {
  const AgendaEmpleadosCreateManyInput({
    this.id,
    required this.idempleado,
    required this.idUsuario,
    required this.fecha,
    required this.hora,
  });

  factory AgendaEmpleadosCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$AgendaEmpleadosCreateManyInputFromJson(json);

  final int? id;

  final int idempleado;

  final int idUsuario;

  final String fecha;

  final String hora;

  @override
  Map<String, dynamic> toJson() => _$AgendaEmpleadosCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosUpdateManyMutationInput implements _i1.JsonSerializable {
  const AgendaEmpleadosUpdateManyMutationInput({
    this.idempleado,
    this.idUsuario,
    this.fecha,
    this.hora,
  });

  factory AgendaEmpleadosUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEmpleadosUpdateManyMutationInputFromJson(json);

  final IntFieldUpdateOperationsInput? idempleado;

  final IntFieldUpdateOperationsInput? idUsuario;

  final StringFieldUpdateOperationsInput? fecha;

  final StringFieldUpdateOperationsInput? hora;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEmpleadosUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const AgendaEmpleadosUncheckedUpdateManyInput({
    this.id,
    this.idempleado,
    this.idUsuario,
    this.fecha,
    this.hora,
  });

  factory AgendaEmpleadosUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEmpleadosUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final IntFieldUpdateOperationsInput? idempleado;

  final IntFieldUpdateOperationsInput? idUsuario;

  final StringFieldUpdateOperationsInput? fecha;

  final StringFieldUpdateOperationsInput? hora;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEmpleadosUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class IntFilter implements _i1.JsonSerializable {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntFilterToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class UsuariosCountOrderByAggregateInput implements _i1.JsonSerializable {
  const UsuariosCountOrderByAggregateInput({
    this.id,
    this.nombre,
    this.apellido,
    this.cedula,
    this.correo,
    this.contrasena,
    this.rol,
  });

  factory UsuariosCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsuariosCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? apellido;

  final SortOrder? cedula;

  final SortOrder? correo;

  final SortOrder? contrasena;

  final SortOrder? rol;

  @override
  Map<String, dynamic> toJson() =>
      _$UsuariosCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UsuariosAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const UsuariosAvgOrderByAggregateInput({this.id});

  factory UsuariosAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsuariosAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() =>
      _$UsuariosAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UsuariosMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const UsuariosMaxOrderByAggregateInput({
    this.id,
    this.nombre,
    this.apellido,
    this.cedula,
    this.correo,
    this.contrasena,
    this.rol,
  });

  factory UsuariosMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsuariosMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? apellido;

  final SortOrder? cedula;

  final SortOrder? correo;

  final SortOrder? contrasena;

  final SortOrder? rol;

  @override
  Map<String, dynamic> toJson() =>
      _$UsuariosMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UsuariosMinOrderByAggregateInput implements _i1.JsonSerializable {
  const UsuariosMinOrderByAggregateInput({
    this.id,
    this.nombre,
    this.apellido,
    this.cedula,
    this.correo,
    this.contrasena,
    this.rol,
  });

  factory UsuariosMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsuariosMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? apellido;

  final SortOrder? cedula;

  final SortOrder? correo;

  final SortOrder? contrasena;

  final SortOrder? rol;

  @override
  Map<String, dynamic> toJson() =>
      _$UsuariosMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UsuariosSumOrderByAggregateInput implements _i1.JsonSerializable {
  const UsuariosSumOrderByAggregateInput({this.id});

  factory UsuariosSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsuariosSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() =>
      _$UsuariosSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class IntWithAggregatesFilter implements _i1.JsonSerializable {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$IntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosCountOrderByAggregateInput
    implements _i1.JsonSerializable {
  const EstablecimientosCountOrderByAggregateInput({
    this.id,
    this.nombre,
    this.direccion,
    this.ciudad,
    this.imagen,
    this.horario,
  });

  factory EstablecimientosCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EstablecimientosCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? direccion;

  final SortOrder? ciudad;

  final SortOrder? imagen;

  final SortOrder? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EstablecimientosCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const EstablecimientosAvgOrderByAggregateInput({this.id});

  factory EstablecimientosAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EstablecimientosAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() =>
      _$EstablecimientosAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const EstablecimientosMaxOrderByAggregateInput({
    this.id,
    this.nombre,
    this.direccion,
    this.ciudad,
    this.imagen,
    this.horario,
  });

  factory EstablecimientosMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EstablecimientosMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? direccion;

  final SortOrder? ciudad;

  final SortOrder? imagen;

  final SortOrder? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EstablecimientosMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosMinOrderByAggregateInput implements _i1.JsonSerializable {
  const EstablecimientosMinOrderByAggregateInput({
    this.id,
    this.nombre,
    this.direccion,
    this.ciudad,
    this.imagen,
    this.horario,
  });

  factory EstablecimientosMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EstablecimientosMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? direccion;

  final SortOrder? ciudad;

  final SortOrder? imagen;

  final SortOrder? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EstablecimientosMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosSumOrderByAggregateInput implements _i1.JsonSerializable {
  const EstablecimientosSumOrderByAggregateInput({this.id});

  factory EstablecimientosSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EstablecimientosSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() =>
      _$EstablecimientosSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasCountOrderByAggregateInput implements _i1.JsonSerializable {
  const EspecialistasCountOrderByAggregateInput({
    this.id,
    this.nombre,
    this.apellido,
    this.telefono,
    this.imagen,
    this.horario,
  });

  factory EspecialistasCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EspecialistasCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? apellido;

  final SortOrder? telefono;

  final SortOrder? imagen;

  final SortOrder? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EspecialistasCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const EspecialistasAvgOrderByAggregateInput({this.id});

  factory EspecialistasAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EspecialistasAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() =>
      _$EspecialistasAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const EspecialistasMaxOrderByAggregateInput({
    this.id,
    this.nombre,
    this.apellido,
    this.telefono,
    this.imagen,
    this.horario,
  });

  factory EspecialistasMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EspecialistasMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? apellido;

  final SortOrder? telefono;

  final SortOrder? imagen;

  final SortOrder? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EspecialistasMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasMinOrderByAggregateInput implements _i1.JsonSerializable {
  const EspecialistasMinOrderByAggregateInput({
    this.id,
    this.nombre,
    this.apellido,
    this.telefono,
    this.imagen,
    this.horario,
  });

  factory EspecialistasMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EspecialistasMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? apellido;

  final SortOrder? telefono;

  final SortOrder? imagen;

  final SortOrder? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EspecialistasMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class EspecialistasSumOrderByAggregateInput implements _i1.JsonSerializable {
  const EspecialistasSumOrderByAggregateInput({this.id});

  factory EspecialistasSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EspecialistasSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() =>
      _$EspecialistasSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosCountOrderByAggregateInput implements _i1.JsonSerializable {
  const EmpleadosCountOrderByAggregateInput({
    this.id,
    this.idEstablecimiento,
    this.nombre,
    this.apellido,
    this.imagen,
    this.horario,
  });

  factory EmpleadosCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EmpleadosCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idEstablecimiento;

  final SortOrder? nombre;

  final SortOrder? apellido;

  final SortOrder? imagen;

  final SortOrder? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EmpleadosCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const EmpleadosAvgOrderByAggregateInput({
    this.id,
    this.idEstablecimiento,
  });

  factory EmpleadosAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EmpleadosAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idEstablecimiento;

  @override
  Map<String, dynamic> toJson() =>
      _$EmpleadosAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const EmpleadosMaxOrderByAggregateInput({
    this.id,
    this.idEstablecimiento,
    this.nombre,
    this.apellido,
    this.imagen,
    this.horario,
  });

  factory EmpleadosMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EmpleadosMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idEstablecimiento;

  final SortOrder? nombre;

  final SortOrder? apellido;

  final SortOrder? imagen;

  final SortOrder? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EmpleadosMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosMinOrderByAggregateInput implements _i1.JsonSerializable {
  const EmpleadosMinOrderByAggregateInput({
    this.id,
    this.idEstablecimiento,
    this.nombre,
    this.apellido,
    this.imagen,
    this.horario,
  });

  factory EmpleadosMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EmpleadosMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idEstablecimiento;

  final SortOrder? nombre;

  final SortOrder? apellido;

  final SortOrder? imagen;

  final SortOrder? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EmpleadosMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class EmpleadosSumOrderByAggregateInput implements _i1.JsonSerializable {
  const EmpleadosSumOrderByAggregateInput({
    this.id,
    this.idEstablecimiento,
  });

  factory EmpleadosSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$EmpleadosSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idEstablecimiento;

  @override
  Map<String, dynamic> toJson() =>
      _$EmpleadosSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaCountOrderByAggregateInput
    implements _i1.JsonSerializable {
  const AgendaEspecialistaCountOrderByAggregateInput({
    this.id,
    this.idEspecialista,
    this.idUsuario,
    this.fecha,
    this.hora,
    this.lugar,
  });

  factory AgendaEspecialistaCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEspecialistaCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idEspecialista;

  final SortOrder? idUsuario;

  final SortOrder? fecha;

  final SortOrder? hora;

  final SortOrder? lugar;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEspecialistaCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaAvgOrderByAggregateInput
    implements _i1.JsonSerializable {
  const AgendaEspecialistaAvgOrderByAggregateInput({
    this.id,
    this.idEspecialista,
    this.idUsuario,
  });

  factory AgendaEspecialistaAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEspecialistaAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idEspecialista;

  final SortOrder? idUsuario;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEspecialistaAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaMaxOrderByAggregateInput
    implements _i1.JsonSerializable {
  const AgendaEspecialistaMaxOrderByAggregateInput({
    this.id,
    this.idEspecialista,
    this.idUsuario,
    this.fecha,
    this.hora,
    this.lugar,
  });

  factory AgendaEspecialistaMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEspecialistaMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idEspecialista;

  final SortOrder? idUsuario;

  final SortOrder? fecha;

  final SortOrder? hora;

  final SortOrder? lugar;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEspecialistaMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaMinOrderByAggregateInput
    implements _i1.JsonSerializable {
  const AgendaEspecialistaMinOrderByAggregateInput({
    this.id,
    this.idEspecialista,
    this.idUsuario,
    this.fecha,
    this.hora,
    this.lugar,
  });

  factory AgendaEspecialistaMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEspecialistaMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idEspecialista;

  final SortOrder? idUsuario;

  final SortOrder? fecha;

  final SortOrder? hora;

  final SortOrder? lugar;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEspecialistaMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaSumOrderByAggregateInput
    implements _i1.JsonSerializable {
  const AgendaEspecialistaSumOrderByAggregateInput({
    this.id,
    this.idEspecialista,
    this.idUsuario,
  });

  factory AgendaEspecialistaSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEspecialistaSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idEspecialista;

  final SortOrder? idUsuario;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEspecialistaSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosCountOrderByAggregateInput
    implements _i1.JsonSerializable {
  const AgendaEmpleadosCountOrderByAggregateInput({
    this.id,
    this.idempleado,
    this.idUsuario,
    this.fecha,
    this.hora,
  });

  factory AgendaEmpleadosCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEmpleadosCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idempleado;

  final SortOrder? idUsuario;

  final SortOrder? fecha;

  final SortOrder? hora;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEmpleadosCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const AgendaEmpleadosAvgOrderByAggregateInput({
    this.id,
    this.idempleado,
    this.idUsuario,
  });

  factory AgendaEmpleadosAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEmpleadosAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idempleado;

  final SortOrder? idUsuario;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEmpleadosAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const AgendaEmpleadosMaxOrderByAggregateInput({
    this.id,
    this.idempleado,
    this.idUsuario,
    this.fecha,
    this.hora,
  });

  factory AgendaEmpleadosMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEmpleadosMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idempleado;

  final SortOrder? idUsuario;

  final SortOrder? fecha;

  final SortOrder? hora;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEmpleadosMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosMinOrderByAggregateInput implements _i1.JsonSerializable {
  const AgendaEmpleadosMinOrderByAggregateInput({
    this.id,
    this.idempleado,
    this.idUsuario,
    this.fecha,
    this.hora,
  });

  factory AgendaEmpleadosMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEmpleadosMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idempleado;

  final SortOrder? idUsuario;

  final SortOrder? fecha;

  final SortOrder? hora;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEmpleadosMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosSumOrderByAggregateInput implements _i1.JsonSerializable {
  const AgendaEmpleadosSumOrderByAggregateInput({
    this.id,
    this.idempleado,
    this.idUsuario,
  });

  factory AgendaEmpleadosSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEmpleadosSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idempleado;

  final SortOrder? idUsuario;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEmpleadosSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class IntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory IntFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$IntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => _$IntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatFilter implements _i1.JsonSerializable {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class Usuarios implements _i1.JsonSerializable {
  const Usuarios({
    required this.id,
    required this.nombre,
    required this.apellido,
    required this.cedula,
    required this.correo,
    required this.contrasena,
    required this.rol,
  });

  factory Usuarios.fromJson(Map<String, dynamic> json) =>
      _$UsuariosFromJson(json);

  final int id;

  final String nombre;

  final String apellido;

  final String cedula;

  final String correo;

  final String contrasena;

  final String rol;

  @override
  Map<String, dynamic> toJson() => _$UsuariosToJson(this);
}

@_i1.jsonSerializable
class Establecimientos implements _i1.JsonSerializable {
  const Establecimientos({
    required this.id,
    required this.nombre,
    required this.direccion,
    required this.ciudad,
    required this.imagen,
    required this.horario,
  });

  factory Establecimientos.fromJson(Map<String, dynamic> json) =>
      _$EstablecimientosFromJson(json);

  final int id;

  final String nombre;

  final String direccion;

  final String ciudad;

  final String imagen;

  final String horario;

  @override
  Map<String, dynamic> toJson() => _$EstablecimientosToJson(this);
}

@_i1.jsonSerializable
class Especialistas implements _i1.JsonSerializable {
  const Especialistas({
    required this.id,
    required this.nombre,
    required this.apellido,
    required this.telefono,
    required this.imagen,
    required this.horario,
  });

  factory Especialistas.fromJson(Map<String, dynamic> json) =>
      _$EspecialistasFromJson(json);

  final int id;

  final String nombre;

  final String apellido;

  final String telefono;

  final String imagen;

  final String horario;

  @override
  Map<String, dynamic> toJson() => _$EspecialistasToJson(this);
}

@_i1.jsonSerializable
class Empleados implements _i1.JsonSerializable {
  const Empleados({
    required this.id,
    required this.idEstablecimiento,
    required this.nombre,
    required this.apellido,
    required this.imagen,
    required this.horario,
  });

  factory Empleados.fromJson(Map<String, dynamic> json) =>
      _$EmpleadosFromJson(json);

  final int id;

  final int idEstablecimiento;

  final String nombre;

  final String apellido;

  final String imagen;

  final String horario;

  @override
  Map<String, dynamic> toJson() => _$EmpleadosToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialista implements _i1.JsonSerializable {
  const AgendaEspecialista({
    required this.id,
    required this.idEspecialista,
    required this.idUsuario,
    required this.fecha,
    required this.hora,
    required this.lugar,
  });

  factory AgendaEspecialista.fromJson(Map<String, dynamic> json) =>
      _$AgendaEspecialistaFromJson(json);

  final int id;

  final int idEspecialista;

  final int idUsuario;

  final String fecha;

  final String hora;

  final String lugar;

  @override
  Map<String, dynamic> toJson() => _$AgendaEspecialistaToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleados implements _i1.JsonSerializable {
  const AgendaEmpleados({
    required this.id,
    required this.idempleado,
    required this.idUsuario,
    required this.fecha,
    required this.hora,
  });

  factory AgendaEmpleados.fromJson(Map<String, dynamic> json) =>
      _$AgendaEmpleadosFromJson(json);

  final int id;

  final int idempleado;

  final int idUsuario;

  final String fecha;

  final String hora;

  @override
  Map<String, dynamic> toJson() => _$AgendaEmpleadosToJson(this);
}

class UsuariosFluent<T> extends _i1.PrismaFluent<T> {
  const UsuariosFluent(
    super.original,
    super.$query,
  );
}

class EstablecimientosFluent<T> extends _i1.PrismaFluent<T> {
  const EstablecimientosFluent(
    super.original,
    super.$query,
  );
}

class EspecialistasFluent<T> extends _i1.PrismaFluent<T> {
  const EspecialistasFluent(
    super.original,
    super.$query,
  );
}

class EmpleadosFluent<T> extends _i1.PrismaFluent<T> {
  const EmpleadosFluent(
    super.original,
    super.$query,
  );
}

class AgendaEspecialistaFluent<T> extends _i1.PrismaFluent<T> {
  const AgendaEspecialistaFluent(
    super.original,
    super.$query,
  );
}

class AgendaEmpleadosFluent<T> extends _i1.PrismaFluent<T> {
  const AgendaEmpleadosFluent(
    super.original,
    super.$query,
  );
}

extension UsuariosModelDelegateExtension on _i1.ModelDelegate<Usuarios> {
  UsuariosFluent<Usuarios?> findUnique(
      {required UsuariosWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueusuarios',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueusuarios',
    );
    final future = query(UsuariosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Usuarios.fromJson(json.cast<String, dynamic>())
            : null);
    return UsuariosFluent<Usuarios?>(
      future,
      query,
    );
  }

  UsuariosFluent<Usuarios> findUniqueOrThrow(
      {required UsuariosWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueusuariosOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueusuariosOrThrow',
    );
    final future = query(UsuariosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Usuarios.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: usuarios)'));
    return UsuariosFluent<Usuarios>(
      future,
      query,
    );
  }

  UsuariosFluent<Usuarios?> findFirst({
    UsuariosWhereInput? where,
    Iterable<UsuariosOrderByWithRelationInput>? orderBy,
    UsuariosWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UsuariosScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstusuarios',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstusuarios',
    );
    final future = query(UsuariosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Usuarios.fromJson(json.cast<String, dynamic>())
            : null);
    return UsuariosFluent<Usuarios?>(
      future,
      query,
    );
  }

  UsuariosFluent<Usuarios> findFirstOrThrow({
    UsuariosWhereInput? where,
    Iterable<UsuariosOrderByWithRelationInput>? orderBy,
    UsuariosWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UsuariosScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstusuariosOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstusuariosOrThrow',
    );
    final future = query(UsuariosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Usuarios.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: usuarios)'));
    return UsuariosFluent<Usuarios>(
      future,
      query,
    );
  }

  Future<Iterable<Usuarios>> findMany({
    UsuariosWhereInput? where,
    Iterable<UsuariosOrderByWithRelationInput>? orderBy,
    UsuariosWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UsuariosScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyusuarios',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyusuarios',
    );
    final fields = UsuariosScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyusuarios) => findManyusuarios.map(
        (Map findManyusuarios) => Usuarios.fromJson(findManyusuarios.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  UsuariosFluent<Usuarios> create({required UsuariosCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneusuarios',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneusuarios',
    );
    final future = query(UsuariosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Usuarios.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: usuarios)'));
    return UsuariosFluent<Usuarios>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<UsuariosCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyusuarios',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyusuarios',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyusuarios) =>
        AffectedRowsOutput.fromJson(createManyusuarios.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UsuariosFluent<Usuarios?> update({
    required UsuariosUpdateInput data,
    required UsuariosWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneusuarios',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneusuarios',
    );
    final future = query(UsuariosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Usuarios.fromJson(json.cast<String, dynamic>())
            : null);
    return UsuariosFluent<Usuarios?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required UsuariosUpdateManyMutationInput data,
    UsuariosWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyusuarios',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyusuarios',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyusuarios) =>
        AffectedRowsOutput.fromJson(updateManyusuarios.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UsuariosFluent<Usuarios> upsert({
    required UsuariosWhereUniqueInput where,
    required UsuariosCreateInput create,
    required UsuariosUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneusuarios',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneusuarios',
    );
    final future = query(UsuariosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Usuarios.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: usuarios)'));
    return UsuariosFluent<Usuarios>(
      future,
      query,
    );
  }

  UsuariosFluent<Usuarios?> delete({required UsuariosWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneusuarios',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneusuarios',
    );
    final future = query(UsuariosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Usuarios.fromJson(json.cast<String, dynamic>())
            : null);
    return UsuariosFluent<Usuarios?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({UsuariosWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyusuarios',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyusuarios',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyusuarios) =>
        AffectedRowsOutput.fromJson(deleteManyusuarios.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateUsuarios aggregate({
    UsuariosWhereInput? where,
    Iterable<UsuariosOrderByWithRelationInput>? orderBy,
    UsuariosWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateusuarios',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateusuarios',
    );
    return AggregateUsuarios(query);
  }

  Future<Iterable<UsuariosGroupByOutputType>> groupBy({
    UsuariosWhereInput? where,
    Iterable<UsuariosOrderByWithAggregationInput>? orderBy,
    required Iterable<UsuariosScalarFieldEnum> by,
    UsuariosScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByusuarios',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByusuarios',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByusuarios) =>
        groupByusuarios.map((Map groupByusuarios) =>
            UsuariosGroupByOutputType.fromJson(groupByusuarios.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension EstablecimientosModelDelegateExtension
    on _i1.ModelDelegate<Establecimientos> {
  EstablecimientosFluent<Establecimientos?> findUnique(
      {required EstablecimientosWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueestablecimientos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueestablecimientos',
    );
    final future =
        query(EstablecimientosScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? Establecimientos.fromJson(json.cast<String, dynamic>())
                : null);
    return EstablecimientosFluent<Establecimientos?>(
      future,
      query,
    );
  }

  EstablecimientosFluent<Establecimientos> findUniqueOrThrow(
      {required EstablecimientosWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueestablecimientosOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueestablecimientosOrThrow',
    );
    final future = query(
            EstablecimientosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Establecimientos.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: establecimientos)'));
    return EstablecimientosFluent<Establecimientos>(
      future,
      query,
    );
  }

  EstablecimientosFluent<Establecimientos?> findFirst({
    EstablecimientosWhereInput? where,
    Iterable<EstablecimientosOrderByWithRelationInput>? orderBy,
    EstablecimientosWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<EstablecimientosScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstestablecimientos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstestablecimientos',
    );
    final future =
        query(EstablecimientosScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? Establecimientos.fromJson(json.cast<String, dynamic>())
                : null);
    return EstablecimientosFluent<Establecimientos?>(
      future,
      query,
    );
  }

  EstablecimientosFluent<Establecimientos> findFirstOrThrow({
    EstablecimientosWhereInput? where,
    Iterable<EstablecimientosOrderByWithRelationInput>? orderBy,
    EstablecimientosWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<EstablecimientosScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstestablecimientosOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstestablecimientosOrThrow',
    );
    final future = query(
            EstablecimientosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Establecimientos.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: establecimientos)'));
    return EstablecimientosFluent<Establecimientos>(
      future,
      query,
    );
  }

  Future<Iterable<Establecimientos>> findMany({
    EstablecimientosWhereInput? where,
    Iterable<EstablecimientosOrderByWithRelationInput>? orderBy,
    EstablecimientosWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<EstablecimientosScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyestablecimientos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyestablecimientos',
    );
    final fields = EstablecimientosScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyestablecimientos) =>
        findManyestablecimientos.map((Map findManyestablecimientos) =>
            Establecimientos.fromJson(findManyestablecimientos.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  EstablecimientosFluent<Establecimientos> create(
      {required EstablecimientosCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneestablecimientos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneestablecimientos',
    );
    final future = query(
            EstablecimientosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Establecimientos.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: establecimientos)'));
    return EstablecimientosFluent<Establecimientos>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<EstablecimientosCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyestablecimientos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyestablecimientos',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyestablecimientos) =>
        AffectedRowsOutput.fromJson(createManyestablecimientos.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  EstablecimientosFluent<Establecimientos?> update({
    required EstablecimientosUpdateInput data,
    required EstablecimientosWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneestablecimientos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneestablecimientos',
    );
    final future =
        query(EstablecimientosScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? Establecimientos.fromJson(json.cast<String, dynamic>())
                : null);
    return EstablecimientosFluent<Establecimientos?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required EstablecimientosUpdateManyMutationInput data,
    EstablecimientosWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyestablecimientos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyestablecimientos',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyestablecimientos) =>
        AffectedRowsOutput.fromJson(updateManyestablecimientos.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  EstablecimientosFluent<Establecimientos> upsert({
    required EstablecimientosWhereUniqueInput where,
    required EstablecimientosCreateInput create,
    required EstablecimientosUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneestablecimientos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneestablecimientos',
    );
    final future = query(
            EstablecimientosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Establecimientos.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: establecimientos)'));
    return EstablecimientosFluent<Establecimientos>(
      future,
      query,
    );
  }

  EstablecimientosFluent<Establecimientos?> delete(
      {required EstablecimientosWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneestablecimientos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneestablecimientos',
    );
    final future =
        query(EstablecimientosScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? Establecimientos.fromJson(json.cast<String, dynamic>())
                : null);
    return EstablecimientosFluent<Establecimientos?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({EstablecimientosWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyestablecimientos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyestablecimientos',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyestablecimientos) =>
        AffectedRowsOutput.fromJson(deleteManyestablecimientos.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateEstablecimientos aggregate({
    EstablecimientosWhereInput? where,
    Iterable<EstablecimientosOrderByWithRelationInput>? orderBy,
    EstablecimientosWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateestablecimientos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateestablecimientos',
    );
    return AggregateEstablecimientos(query);
  }

  Future<Iterable<EstablecimientosGroupByOutputType>> groupBy({
    EstablecimientosWhereInput? where,
    Iterable<EstablecimientosOrderByWithAggregationInput>? orderBy,
    required Iterable<EstablecimientosScalarFieldEnum> by,
    EstablecimientosScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByestablecimientos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByestablecimientos',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByestablecimientos) =>
        groupByestablecimientos.map((Map groupByestablecimientos) =>
            EstablecimientosGroupByOutputType.fromJson(
                groupByestablecimientos.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension EspecialistasModelDelegateExtension
    on _i1.ModelDelegate<Especialistas> {
  EspecialistasFluent<Especialistas?> findUnique(
      {required EspecialistasWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueespecialistas',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueespecialistas',
    );
    final future = query(EspecialistasScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Especialistas.fromJson(json.cast<String, dynamic>())
            : null);
    return EspecialistasFluent<Especialistas?>(
      future,
      query,
    );
  }

  EspecialistasFluent<Especialistas> findUniqueOrThrow(
      {required EspecialistasWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueespecialistasOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueespecialistasOrThrow',
    );
    final future = query(EspecialistasScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Especialistas.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: especialistas)'));
    return EspecialistasFluent<Especialistas>(
      future,
      query,
    );
  }

  EspecialistasFluent<Especialistas?> findFirst({
    EspecialistasWhereInput? where,
    Iterable<EspecialistasOrderByWithRelationInput>? orderBy,
    EspecialistasWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<EspecialistasScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstespecialistas',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstespecialistas',
    );
    final future = query(EspecialistasScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Especialistas.fromJson(json.cast<String, dynamic>())
            : null);
    return EspecialistasFluent<Especialistas?>(
      future,
      query,
    );
  }

  EspecialistasFluent<Especialistas> findFirstOrThrow({
    EspecialistasWhereInput? where,
    Iterable<EspecialistasOrderByWithRelationInput>? orderBy,
    EspecialistasWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<EspecialistasScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstespecialistasOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstespecialistasOrThrow',
    );
    final future = query(EspecialistasScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Especialistas.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: especialistas)'));
    return EspecialistasFluent<Especialistas>(
      future,
      query,
    );
  }

  Future<Iterable<Especialistas>> findMany({
    EspecialistasWhereInput? where,
    Iterable<EspecialistasOrderByWithRelationInput>? orderBy,
    EspecialistasWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<EspecialistasScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyespecialistas',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyespecialistas',
    );
    final fields = EspecialistasScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyespecialistas) =>
        findManyespecialistas.map((Map findManyespecialistas) =>
            Especialistas.fromJson(findManyespecialistas.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  EspecialistasFluent<Especialistas> create(
      {required EspecialistasCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneespecialistas',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneespecialistas',
    );
    final future = query(EspecialistasScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Especialistas.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: especialistas)'));
    return EspecialistasFluent<Especialistas>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<EspecialistasCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyespecialistas',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyespecialistas',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyespecialistas) =>
        AffectedRowsOutput.fromJson(createManyespecialistas.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  EspecialistasFluent<Especialistas?> update({
    required EspecialistasUpdateInput data,
    required EspecialistasWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneespecialistas',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneespecialistas',
    );
    final future = query(EspecialistasScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Especialistas.fromJson(json.cast<String, dynamic>())
            : null);
    return EspecialistasFluent<Especialistas?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required EspecialistasUpdateManyMutationInput data,
    EspecialistasWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyespecialistas',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyespecialistas',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyespecialistas) =>
        AffectedRowsOutput.fromJson(updateManyespecialistas.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  EspecialistasFluent<Especialistas> upsert({
    required EspecialistasWhereUniqueInput where,
    required EspecialistasCreateInput create,
    required EspecialistasUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneespecialistas',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneespecialistas',
    );
    final future = query(EspecialistasScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Especialistas.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: especialistas)'));
    return EspecialistasFluent<Especialistas>(
      future,
      query,
    );
  }

  EspecialistasFluent<Especialistas?> delete(
      {required EspecialistasWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneespecialistas',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneespecialistas',
    );
    final future = query(EspecialistasScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Especialistas.fromJson(json.cast<String, dynamic>())
            : null);
    return EspecialistasFluent<Especialistas?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({EspecialistasWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyespecialistas',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyespecialistas',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyespecialistas) =>
        AffectedRowsOutput.fromJson(deleteManyespecialistas.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateEspecialistas aggregate({
    EspecialistasWhereInput? where,
    Iterable<EspecialistasOrderByWithRelationInput>? orderBy,
    EspecialistasWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateespecialistas',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateespecialistas',
    );
    return AggregateEspecialistas(query);
  }

  Future<Iterable<EspecialistasGroupByOutputType>> groupBy({
    EspecialistasWhereInput? where,
    Iterable<EspecialistasOrderByWithAggregationInput>? orderBy,
    required Iterable<EspecialistasScalarFieldEnum> by,
    EspecialistasScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByespecialistas',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByespecialistas',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByespecialistas) => groupByespecialistas.map(
        (Map groupByespecialistas) => EspecialistasGroupByOutputType.fromJson(
            groupByespecialistas.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension EmpleadosModelDelegateExtension on _i1.ModelDelegate<Empleados> {
  EmpleadosFluent<Empleados?> findUnique(
      {required EmpleadosWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueempleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueempleados',
    );
    final future = query(EmpleadosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Empleados.fromJson(json.cast<String, dynamic>())
            : null);
    return EmpleadosFluent<Empleados?>(
      future,
      query,
    );
  }

  EmpleadosFluent<Empleados> findUniqueOrThrow(
      {required EmpleadosWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueempleadosOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueempleadosOrThrow',
    );
    final future = query(EmpleadosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Empleados.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: empleados)'));
    return EmpleadosFluent<Empleados>(
      future,
      query,
    );
  }

  EmpleadosFluent<Empleados?> findFirst({
    EmpleadosWhereInput? where,
    Iterable<EmpleadosOrderByWithRelationInput>? orderBy,
    EmpleadosWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<EmpleadosScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstempleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstempleados',
    );
    final future = query(EmpleadosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Empleados.fromJson(json.cast<String, dynamic>())
            : null);
    return EmpleadosFluent<Empleados?>(
      future,
      query,
    );
  }

  EmpleadosFluent<Empleados> findFirstOrThrow({
    EmpleadosWhereInput? where,
    Iterable<EmpleadosOrderByWithRelationInput>? orderBy,
    EmpleadosWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<EmpleadosScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstempleadosOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstempleadosOrThrow',
    );
    final future = query(EmpleadosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Empleados.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: empleados)'));
    return EmpleadosFluent<Empleados>(
      future,
      query,
    );
  }

  Future<Iterable<Empleados>> findMany({
    EmpleadosWhereInput? where,
    Iterable<EmpleadosOrderByWithRelationInput>? orderBy,
    EmpleadosWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<EmpleadosScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyempleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyempleados',
    );
    final fields = EmpleadosScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyempleados) =>
        findManyempleados.map((Map findManyempleados) =>
            Empleados.fromJson(findManyempleados.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  EmpleadosFluent<Empleados> create({required EmpleadosCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneempleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneempleados',
    );
    final future = query(EmpleadosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Empleados.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: empleados)'));
    return EmpleadosFluent<Empleados>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<EmpleadosCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyempleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyempleados',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyempleados) =>
        AffectedRowsOutput.fromJson(createManyempleados.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  EmpleadosFluent<Empleados?> update({
    required EmpleadosUpdateInput data,
    required EmpleadosWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneempleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneempleados',
    );
    final future = query(EmpleadosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Empleados.fromJson(json.cast<String, dynamic>())
            : null);
    return EmpleadosFluent<Empleados?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required EmpleadosUpdateManyMutationInput data,
    EmpleadosWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyempleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyempleados',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyempleados) =>
        AffectedRowsOutput.fromJson(updateManyempleados.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  EmpleadosFluent<Empleados> upsert({
    required EmpleadosWhereUniqueInput where,
    required EmpleadosCreateInput create,
    required EmpleadosUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneempleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneempleados',
    );
    final future = query(EmpleadosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Empleados.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: empleados)'));
    return EmpleadosFluent<Empleados>(
      future,
      query,
    );
  }

  EmpleadosFluent<Empleados?> delete(
      {required EmpleadosWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneempleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneempleados',
    );
    final future = query(EmpleadosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Empleados.fromJson(json.cast<String, dynamic>())
            : null);
    return EmpleadosFluent<Empleados?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({EmpleadosWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyempleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyempleados',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyempleados) =>
        AffectedRowsOutput.fromJson(deleteManyempleados.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateEmpleados aggregate({
    EmpleadosWhereInput? where,
    Iterable<EmpleadosOrderByWithRelationInput>? orderBy,
    EmpleadosWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateempleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateempleados',
    );
    return AggregateEmpleados(query);
  }

  Future<Iterable<EmpleadosGroupByOutputType>> groupBy({
    EmpleadosWhereInput? where,
    Iterable<EmpleadosOrderByWithAggregationInput>? orderBy,
    required Iterable<EmpleadosScalarFieldEnum> by,
    EmpleadosScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByempleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByempleados',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByempleados) =>
        groupByempleados.map((Map groupByempleados) =>
            EmpleadosGroupByOutputType.fromJson(groupByempleados.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension AgendaEspecialistaModelDelegateExtension
    on _i1.ModelDelegate<AgendaEspecialista> {
  AgendaEspecialistaFluent<AgendaEspecialista?> findUnique(
      {required AgendaEspecialistaWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueagendaEspecialista',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueagendaEspecialista',
    );
    final future =
        query(AgendaEspecialistaScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? AgendaEspecialista.fromJson(json.cast<String, dynamic>())
                : null);
    return AgendaEspecialistaFluent<AgendaEspecialista?>(
      future,
      query,
    );
  }

  AgendaEspecialistaFluent<AgendaEspecialista> findUniqueOrThrow(
      {required AgendaEspecialistaWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueagendaEspecialistaOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueagendaEspecialistaOrThrow',
    );
    final future = query(
            AgendaEspecialistaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AgendaEspecialista.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: agendaEspecialista)'));
    return AgendaEspecialistaFluent<AgendaEspecialista>(
      future,
      query,
    );
  }

  AgendaEspecialistaFluent<AgendaEspecialista?> findFirst({
    AgendaEspecialistaWhereInput? where,
    Iterable<AgendaEspecialistaOrderByWithRelationInput>? orderBy,
    AgendaEspecialistaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AgendaEspecialistaScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstagendaEspecialista',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstagendaEspecialista',
    );
    final future =
        query(AgendaEspecialistaScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? AgendaEspecialista.fromJson(json.cast<String, dynamic>())
                : null);
    return AgendaEspecialistaFluent<AgendaEspecialista?>(
      future,
      query,
    );
  }

  AgendaEspecialistaFluent<AgendaEspecialista> findFirstOrThrow({
    AgendaEspecialistaWhereInput? where,
    Iterable<AgendaEspecialistaOrderByWithRelationInput>? orderBy,
    AgendaEspecialistaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AgendaEspecialistaScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstagendaEspecialistaOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstagendaEspecialistaOrThrow',
    );
    final future = query(
            AgendaEspecialistaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AgendaEspecialista.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: agendaEspecialista)'));
    return AgendaEspecialistaFluent<AgendaEspecialista>(
      future,
      query,
    );
  }

  Future<Iterable<AgendaEspecialista>> findMany({
    AgendaEspecialistaWhereInput? where,
    Iterable<AgendaEspecialistaOrderByWithRelationInput>? orderBy,
    AgendaEspecialistaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AgendaEspecialistaScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyagendaEspecialista',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyagendaEspecialista',
    );
    final fields = AgendaEspecialistaScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyagendaEspecialista) =>
        findManyagendaEspecialista.map((Map findManyagendaEspecialista) =>
            AgendaEspecialista.fromJson(findManyagendaEspecialista.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  AgendaEspecialistaFluent<AgendaEspecialista> create(
      {required AgendaEspecialistaCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneagendaEspecialista',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneagendaEspecialista',
    );
    final future = query(
            AgendaEspecialistaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AgendaEspecialista.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: agendaEspecialista)'));
    return AgendaEspecialistaFluent<AgendaEspecialista>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<AgendaEspecialistaCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyagendaEspecialista',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyagendaEspecialista',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyagendaEspecialista) =>
        AffectedRowsOutput.fromJson(createManyagendaEspecialista.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AgendaEspecialistaFluent<AgendaEspecialista?> update({
    required AgendaEspecialistaUpdateInput data,
    required AgendaEspecialistaWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneagendaEspecialista',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneagendaEspecialista',
    );
    final future =
        query(AgendaEspecialistaScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? AgendaEspecialista.fromJson(json.cast<String, dynamic>())
                : null);
    return AgendaEspecialistaFluent<AgendaEspecialista?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required AgendaEspecialistaUpdateManyMutationInput data,
    AgendaEspecialistaWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyagendaEspecialista',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyagendaEspecialista',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyagendaEspecialista) =>
        AffectedRowsOutput.fromJson(updateManyagendaEspecialista.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AgendaEspecialistaFluent<AgendaEspecialista> upsert({
    required AgendaEspecialistaWhereUniqueInput where,
    required AgendaEspecialistaCreateInput create,
    required AgendaEspecialistaUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneagendaEspecialista',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneagendaEspecialista',
    );
    final future = query(
            AgendaEspecialistaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AgendaEspecialista.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: agendaEspecialista)'));
    return AgendaEspecialistaFluent<AgendaEspecialista>(
      future,
      query,
    );
  }

  AgendaEspecialistaFluent<AgendaEspecialista?> delete(
      {required AgendaEspecialistaWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneagendaEspecialista',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneagendaEspecialista',
    );
    final future =
        query(AgendaEspecialistaScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? AgendaEspecialista.fromJson(json.cast<String, dynamic>())
                : null);
    return AgendaEspecialistaFluent<AgendaEspecialista?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({AgendaEspecialistaWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyagendaEspecialista',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyagendaEspecialista',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyagendaEspecialista) =>
        AffectedRowsOutput.fromJson(deleteManyagendaEspecialista.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateAgendaEspecialista aggregate({
    AgendaEspecialistaWhereInput? where,
    Iterable<AgendaEspecialistaOrderByWithRelationInput>? orderBy,
    AgendaEspecialistaWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateagendaEspecialista',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateagendaEspecialista',
    );
    return AggregateAgendaEspecialista(query);
  }

  Future<Iterable<AgendaEspecialistaGroupByOutputType>> groupBy({
    AgendaEspecialistaWhereInput? where,
    Iterable<AgendaEspecialistaOrderByWithAggregationInput>? orderBy,
    required Iterable<AgendaEspecialistaScalarFieldEnum> by,
    AgendaEspecialistaScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByagendaEspecialista',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByagendaEspecialista',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByagendaEspecialista) =>
        groupByagendaEspecialista.map((Map groupByagendaEspecialista) =>
            AgendaEspecialistaGroupByOutputType.fromJson(
                groupByagendaEspecialista.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension AgendaEmpleadosModelDelegateExtension
    on _i1.ModelDelegate<AgendaEmpleados> {
  AgendaEmpleadosFluent<AgendaEmpleados?> findUnique(
      {required AgendaEmpleadosWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueagendaEmpleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueagendaEmpleados',
    );
    final future =
        query(AgendaEmpleadosScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? AgendaEmpleados.fromJson(json.cast<String, dynamic>())
                : null);
    return AgendaEmpleadosFluent<AgendaEmpleados?>(
      future,
      query,
    );
  }

  AgendaEmpleadosFluent<AgendaEmpleados> findUniqueOrThrow(
      {required AgendaEmpleadosWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueagendaEmpleadosOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueagendaEmpleadosOrThrow',
    );
    final future = query(
            AgendaEmpleadosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AgendaEmpleados.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: agendaEmpleados)'));
    return AgendaEmpleadosFluent<AgendaEmpleados>(
      future,
      query,
    );
  }

  AgendaEmpleadosFluent<AgendaEmpleados?> findFirst({
    AgendaEmpleadosWhereInput? where,
    Iterable<AgendaEmpleadosOrderByWithRelationInput>? orderBy,
    AgendaEmpleadosWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AgendaEmpleadosScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstagendaEmpleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstagendaEmpleados',
    );
    final future =
        query(AgendaEmpleadosScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? AgendaEmpleados.fromJson(json.cast<String, dynamic>())
                : null);
    return AgendaEmpleadosFluent<AgendaEmpleados?>(
      future,
      query,
    );
  }

  AgendaEmpleadosFluent<AgendaEmpleados> findFirstOrThrow({
    AgendaEmpleadosWhereInput? where,
    Iterable<AgendaEmpleadosOrderByWithRelationInput>? orderBy,
    AgendaEmpleadosWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AgendaEmpleadosScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstagendaEmpleadosOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstagendaEmpleadosOrThrow',
    );
    final future = query(
            AgendaEmpleadosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AgendaEmpleados.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: agendaEmpleados)'));
    return AgendaEmpleadosFluent<AgendaEmpleados>(
      future,
      query,
    );
  }

  Future<Iterable<AgendaEmpleados>> findMany({
    AgendaEmpleadosWhereInput? where,
    Iterable<AgendaEmpleadosOrderByWithRelationInput>? orderBy,
    AgendaEmpleadosWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AgendaEmpleadosScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyagendaEmpleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyagendaEmpleados',
    );
    final fields = AgendaEmpleadosScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyagendaEmpleados) =>
        findManyagendaEmpleados.map((Map findManyagendaEmpleados) =>
            AgendaEmpleados.fromJson(findManyagendaEmpleados.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  AgendaEmpleadosFluent<AgendaEmpleados> create(
      {required AgendaEmpleadosCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneagendaEmpleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneagendaEmpleados',
    );
    final future = query(
            AgendaEmpleadosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AgendaEmpleados.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: agendaEmpleados)'));
    return AgendaEmpleadosFluent<AgendaEmpleados>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<AgendaEmpleadosCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyagendaEmpleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyagendaEmpleados',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyagendaEmpleados) =>
        AffectedRowsOutput.fromJson(createManyagendaEmpleados.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AgendaEmpleadosFluent<AgendaEmpleados?> update({
    required AgendaEmpleadosUpdateInput data,
    required AgendaEmpleadosWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneagendaEmpleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneagendaEmpleados',
    );
    final future =
        query(AgendaEmpleadosScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? AgendaEmpleados.fromJson(json.cast<String, dynamic>())
                : null);
    return AgendaEmpleadosFluent<AgendaEmpleados?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required AgendaEmpleadosUpdateManyMutationInput data,
    AgendaEmpleadosWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyagendaEmpleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyagendaEmpleados',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyagendaEmpleados) =>
        AffectedRowsOutput.fromJson(updateManyagendaEmpleados.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AgendaEmpleadosFluent<AgendaEmpleados> upsert({
    required AgendaEmpleadosWhereUniqueInput where,
    required AgendaEmpleadosCreateInput create,
    required AgendaEmpleadosUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneagendaEmpleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneagendaEmpleados',
    );
    final future = query(
            AgendaEmpleadosScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AgendaEmpleados.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: agendaEmpleados)'));
    return AgendaEmpleadosFluent<AgendaEmpleados>(
      future,
      query,
    );
  }

  AgendaEmpleadosFluent<AgendaEmpleados?> delete(
      {required AgendaEmpleadosWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneagendaEmpleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneagendaEmpleados',
    );
    final future =
        query(AgendaEmpleadosScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? AgendaEmpleados.fromJson(json.cast<String, dynamic>())
                : null);
    return AgendaEmpleadosFluent<AgendaEmpleados?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({AgendaEmpleadosWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyagendaEmpleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyagendaEmpleados',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyagendaEmpleados) =>
        AffectedRowsOutput.fromJson(deleteManyagendaEmpleados.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateAgendaEmpleados aggregate({
    AgendaEmpleadosWhereInput? where,
    Iterable<AgendaEmpleadosOrderByWithRelationInput>? orderBy,
    AgendaEmpleadosWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateagendaEmpleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateagendaEmpleados',
    );
    return AggregateAgendaEmpleados(query);
  }

  Future<Iterable<AgendaEmpleadosGroupByOutputType>> groupBy({
    AgendaEmpleadosWhereInput? where,
    Iterable<AgendaEmpleadosOrderByWithAggregationInput>? orderBy,
    required Iterable<AgendaEmpleadosScalarFieldEnum> by,
    AgendaEmpleadosScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByagendaEmpleados',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByagendaEmpleados',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByagendaEmpleados) =>
        groupByagendaEmpleados.map((Map groupByagendaEmpleados) =>
            AgendaEmpleadosGroupByOutputType.fromJson(
                groupByagendaEmpleados.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class UsuariosGroupByOutputType implements _i1.JsonSerializable {
  const UsuariosGroupByOutputType({
    this.id,
    this.nombre,
    this.apellido,
    this.cedula,
    this.correo,
    this.contrasena,
    this.rol,
  });

  factory UsuariosGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$UsuariosGroupByOutputTypeFromJson(json);

  final int? id;

  final String? nombre;

  final String? apellido;

  final String? cedula;

  final String? correo;

  final String? contrasena;

  final String? rol;

  @override
  Map<String, dynamic> toJson() => _$UsuariosGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class EstablecimientosGroupByOutputType implements _i1.JsonSerializable {
  const EstablecimientosGroupByOutputType({
    this.id,
    this.nombre,
    this.direccion,
    this.ciudad,
    this.imagen,
    this.horario,
  });

  factory EstablecimientosGroupByOutputType.fromJson(
          Map<String, dynamic> json) =>
      _$EstablecimientosGroupByOutputTypeFromJson(json);

  final int? id;

  final String? nombre;

  final String? direccion;

  final String? ciudad;

  final String? imagen;

  final String? horario;

  @override
  Map<String, dynamic> toJson() =>
      _$EstablecimientosGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class EspecialistasGroupByOutputType implements _i1.JsonSerializable {
  const EspecialistasGroupByOutputType({
    this.id,
    this.nombre,
    this.apellido,
    this.telefono,
    this.imagen,
    this.horario,
  });

  factory EspecialistasGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$EspecialistasGroupByOutputTypeFromJson(json);

  final int? id;

  final String? nombre;

  final String? apellido;

  final String? telefono;

  final String? imagen;

  final String? horario;

  @override
  Map<String, dynamic> toJson() => _$EspecialistasGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class EmpleadosGroupByOutputType implements _i1.JsonSerializable {
  const EmpleadosGroupByOutputType({
    this.id,
    this.idEstablecimiento,
    this.nombre,
    this.apellido,
    this.imagen,
    this.horario,
  });

  factory EmpleadosGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$EmpleadosGroupByOutputTypeFromJson(json);

  final int? id;

  final int? idEstablecimiento;

  final String? nombre;

  final String? apellido;

  final String? imagen;

  final String? horario;

  @override
  Map<String, dynamic> toJson() => _$EmpleadosGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AgendaEspecialistaGroupByOutputType implements _i1.JsonSerializable {
  const AgendaEspecialistaGroupByOutputType({
    this.id,
    this.idEspecialista,
    this.idUsuario,
    this.fecha,
    this.hora,
    this.lugar,
  });

  factory AgendaEspecialistaGroupByOutputType.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEspecialistaGroupByOutputTypeFromJson(json);

  final int? id;

  final int? idEspecialista;

  final int? idUsuario;

  final String? fecha;

  final String? hora;

  final String? lugar;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEspecialistaGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AgendaEmpleadosGroupByOutputType implements _i1.JsonSerializable {
  const AgendaEmpleadosGroupByOutputType({
    this.id,
    this.idempleado,
    this.idUsuario,
    this.fecha,
    this.hora,
  });

  factory AgendaEmpleadosGroupByOutputType.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEmpleadosGroupByOutputTypeFromJson(json);

  final int? id;

  final int? idempleado;

  final int? idUsuario;

  final String? fecha;

  final String? hora;

  @override
  Map<String, dynamic> toJson() =>
      _$AgendaEmpleadosGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateUsuarios {
  const AggregateUsuarios(this.$query);

  final _i1.PrismaFluentQuery $query;

  UsuariosCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UsuariosCountAggregateOutputType(query);
  }

  UsuariosAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return UsuariosAvgAggregateOutputType(query);
  }

  UsuariosSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return UsuariosSumAggregateOutputType(query);
  }

  UsuariosMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return UsuariosMinAggregateOutputType(query);
  }

  UsuariosMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return UsuariosMaxAggregateOutputType(query);
  }
}

class AggregateEstablecimientos {
  const AggregateEstablecimientos(this.$query);

  final _i1.PrismaFluentQuery $query;

  EstablecimientosCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return EstablecimientosCountAggregateOutputType(query);
  }

  EstablecimientosAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return EstablecimientosAvgAggregateOutputType(query);
  }

  EstablecimientosSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return EstablecimientosSumAggregateOutputType(query);
  }

  EstablecimientosMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return EstablecimientosMinAggregateOutputType(query);
  }

  EstablecimientosMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return EstablecimientosMaxAggregateOutputType(query);
  }
}

class AggregateEspecialistas {
  const AggregateEspecialistas(this.$query);

  final _i1.PrismaFluentQuery $query;

  EspecialistasCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return EspecialistasCountAggregateOutputType(query);
  }

  EspecialistasAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return EspecialistasAvgAggregateOutputType(query);
  }

  EspecialistasSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return EspecialistasSumAggregateOutputType(query);
  }

  EspecialistasMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return EspecialistasMinAggregateOutputType(query);
  }

  EspecialistasMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return EspecialistasMaxAggregateOutputType(query);
  }
}

class AggregateEmpleados {
  const AggregateEmpleados(this.$query);

  final _i1.PrismaFluentQuery $query;

  EmpleadosCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return EmpleadosCountAggregateOutputType(query);
  }

  EmpleadosAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return EmpleadosAvgAggregateOutputType(query);
  }

  EmpleadosSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return EmpleadosSumAggregateOutputType(query);
  }

  EmpleadosMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return EmpleadosMinAggregateOutputType(query);
  }

  EmpleadosMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return EmpleadosMaxAggregateOutputType(query);
  }
}

class AggregateAgendaEspecialista {
  const AggregateAgendaEspecialista(this.$query);

  final _i1.PrismaFluentQuery $query;

  AgendaEspecialistaCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return AgendaEspecialistaCountAggregateOutputType(query);
  }

  AgendaEspecialistaAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return AgendaEspecialistaAvgAggregateOutputType(query);
  }

  AgendaEspecialistaSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return AgendaEspecialistaSumAggregateOutputType(query);
  }

  AgendaEspecialistaMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return AgendaEspecialistaMinAggregateOutputType(query);
  }

  AgendaEspecialistaMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return AgendaEspecialistaMaxAggregateOutputType(query);
  }
}

class AggregateAgendaEmpleados {
  const AggregateAgendaEmpleados(this.$query);

  final _i1.PrismaFluentQuery $query;

  AgendaEmpleadosCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return AgendaEmpleadosCountAggregateOutputType(query);
  }

  AgendaEmpleadosAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return AgendaEmpleadosAvgAggregateOutputType(query);
  }

  AgendaEmpleadosSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return AgendaEmpleadosSumAggregateOutputType(query);
  }

  AgendaEmpleadosMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return AgendaEmpleadosMinAggregateOutputType(query);
  }

  AgendaEmpleadosMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return AgendaEmpleadosMaxAggregateOutputType(query);
  }
}

class UsuariosCountAggregateOutputType {
  const UsuariosCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> apellido() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'apellido',
          fields: fields,
        )
      ]),
      key: r'apellido',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> cedula() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'cedula',
          fields: fields,
        )
      ]),
      key: r'cedula',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> correo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'correo',
          fields: fields,
        )
      ]),
      key: r'correo',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> contrasena() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'contrasena',
          fields: fields,
        )
      ]),
      key: r'contrasena',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> rol() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'rol',
          fields: fields,
        )
      ]),
      key: r'rol',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UsuariosAvgAggregateOutputType {
  const UsuariosAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class UsuariosSumAggregateOutputType {
  const UsuariosSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class UsuariosMinAggregateOutputType {
  const UsuariosMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> apellido() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'apellido',
          fields: fields,
        )
      ]),
      key: r'apellido',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> cedula() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'cedula',
          fields: fields,
        )
      ]),
      key: r'cedula',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> correo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'correo',
          fields: fields,
        )
      ]),
      key: r'correo',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> contrasena() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'contrasena',
          fields: fields,
        )
      ]),
      key: r'contrasena',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> rol() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'rol',
          fields: fields,
        )
      ]),
      key: r'rol',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class UsuariosMaxAggregateOutputType {
  const UsuariosMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> apellido() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'apellido',
          fields: fields,
        )
      ]),
      key: r'apellido',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> cedula() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'cedula',
          fields: fields,
        )
      ]),
      key: r'cedula',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> correo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'correo',
          fields: fields,
        )
      ]),
      key: r'correo',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> contrasena() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'contrasena',
          fields: fields,
        )
      ]),
      key: r'contrasena',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> rol() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'rol',
          fields: fields,
        )
      ]),
      key: r'rol',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class EstablecimientosCountAggregateOutputType {
  const EstablecimientosCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> direccion() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'direccion',
          fields: fields,
        )
      ]),
      key: r'direccion',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> ciudad() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ciudad',
          fields: fields,
        )
      ]),
      key: r'ciudad',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> imagen() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'imagen',
          fields: fields,
        )
      ]),
      key: r'imagen',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> horario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'horario',
          fields: fields,
        )
      ]),
      key: r'horario',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class EstablecimientosAvgAggregateOutputType {
  const EstablecimientosAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class EstablecimientosSumAggregateOutputType {
  const EstablecimientosSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class EstablecimientosMinAggregateOutputType {
  const EstablecimientosMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> direccion() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'direccion',
          fields: fields,
        )
      ]),
      key: r'direccion',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> ciudad() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ciudad',
          fields: fields,
        )
      ]),
      key: r'ciudad',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> imagen() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'imagen',
          fields: fields,
        )
      ]),
      key: r'imagen',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> horario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'horario',
          fields: fields,
        )
      ]),
      key: r'horario',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class EstablecimientosMaxAggregateOutputType {
  const EstablecimientosMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> direccion() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'direccion',
          fields: fields,
        )
      ]),
      key: r'direccion',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> ciudad() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ciudad',
          fields: fields,
        )
      ]),
      key: r'ciudad',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> imagen() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'imagen',
          fields: fields,
        )
      ]),
      key: r'imagen',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> horario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'horario',
          fields: fields,
        )
      ]),
      key: r'horario',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class EspecialistasCountAggregateOutputType {
  const EspecialistasCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> apellido() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'apellido',
          fields: fields,
        )
      ]),
      key: r'apellido',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> telefono() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'telefono',
          fields: fields,
        )
      ]),
      key: r'telefono',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> imagen() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'imagen',
          fields: fields,
        )
      ]),
      key: r'imagen',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> horario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'horario',
          fields: fields,
        )
      ]),
      key: r'horario',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class EspecialistasAvgAggregateOutputType {
  const EspecialistasAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class EspecialistasSumAggregateOutputType {
  const EspecialistasSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class EspecialistasMinAggregateOutputType {
  const EspecialistasMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> apellido() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'apellido',
          fields: fields,
        )
      ]),
      key: r'apellido',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> telefono() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'telefono',
          fields: fields,
        )
      ]),
      key: r'telefono',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> imagen() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'imagen',
          fields: fields,
        )
      ]),
      key: r'imagen',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> horario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'horario',
          fields: fields,
        )
      ]),
      key: r'horario',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class EspecialistasMaxAggregateOutputType {
  const EspecialistasMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> apellido() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'apellido',
          fields: fields,
        )
      ]),
      key: r'apellido',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> telefono() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'telefono',
          fields: fields,
        )
      ]),
      key: r'telefono',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> imagen() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'imagen',
          fields: fields,
        )
      ]),
      key: r'imagen',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> horario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'horario',
          fields: fields,
        )
      ]),
      key: r'horario',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class EmpleadosCountAggregateOutputType {
  const EmpleadosCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> idEstablecimiento() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idEstablecimiento',
          fields: fields,
        )
      ]),
      key: r'idEstablecimiento',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> apellido() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'apellido',
          fields: fields,
        )
      ]),
      key: r'apellido',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> imagen() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'imagen',
          fields: fields,
        )
      ]),
      key: r'imagen',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> horario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'horario',
          fields: fields,
        )
      ]),
      key: r'horario',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class EmpleadosAvgAggregateOutputType {
  const EmpleadosAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> idEstablecimiento() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idEstablecimiento',
          fields: fields,
        )
      ]),
      key: r'idEstablecimiento',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class EmpleadosSumAggregateOutputType {
  const EmpleadosSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idEstablecimiento() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idEstablecimiento',
          fields: fields,
        )
      ]),
      key: r'idEstablecimiento',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class EmpleadosMinAggregateOutputType {
  const EmpleadosMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idEstablecimiento() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idEstablecimiento',
          fields: fields,
        )
      ]),
      key: r'idEstablecimiento',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> apellido() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'apellido',
          fields: fields,
        )
      ]),
      key: r'apellido',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> imagen() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'imagen',
          fields: fields,
        )
      ]),
      key: r'imagen',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> horario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'horario',
          fields: fields,
        )
      ]),
      key: r'horario',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class EmpleadosMaxAggregateOutputType {
  const EmpleadosMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idEstablecimiento() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idEstablecimiento',
          fields: fields,
        )
      ]),
      key: r'idEstablecimiento',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> apellido() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'apellido',
          fields: fields,
        )
      ]),
      key: r'apellido',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> imagen() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'imagen',
          fields: fields,
        )
      ]),
      key: r'imagen',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> horario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'horario',
          fields: fields,
        )
      ]),
      key: r'horario',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class AgendaEspecialistaCountAggregateOutputType {
  const AgendaEspecialistaCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> idEspecialista() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idEspecialista',
          fields: fields,
        )
      ]),
      key: r'idEspecialista',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> idUsuario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idUsuario',
          fields: fields,
        )
      ]),
      key: r'idUsuario',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> fecha() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'fecha',
          fields: fields,
        )
      ]),
      key: r'fecha',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> hora() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'hora',
          fields: fields,
        )
      ]),
      key: r'hora',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> lugar() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'lugar',
          fields: fields,
        )
      ]),
      key: r'lugar',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class AgendaEspecialistaAvgAggregateOutputType {
  const AgendaEspecialistaAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> idEspecialista() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idEspecialista',
          fields: fields,
        )
      ]),
      key: r'idEspecialista',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> idUsuario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idUsuario',
          fields: fields,
        )
      ]),
      key: r'idUsuario',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class AgendaEspecialistaSumAggregateOutputType {
  const AgendaEspecialistaSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idEspecialista() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idEspecialista',
          fields: fields,
        )
      ]),
      key: r'idEspecialista',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idUsuario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idUsuario',
          fields: fields,
        )
      ]),
      key: r'idUsuario',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class AgendaEspecialistaMinAggregateOutputType {
  const AgendaEspecialistaMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idEspecialista() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idEspecialista',
          fields: fields,
        )
      ]),
      key: r'idEspecialista',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idUsuario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idUsuario',
          fields: fields,
        )
      ]),
      key: r'idUsuario',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> fecha() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'fecha',
          fields: fields,
        )
      ]),
      key: r'fecha',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> hora() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'hora',
          fields: fields,
        )
      ]),
      key: r'hora',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> lugar() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'lugar',
          fields: fields,
        )
      ]),
      key: r'lugar',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class AgendaEspecialistaMaxAggregateOutputType {
  const AgendaEspecialistaMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idEspecialista() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idEspecialista',
          fields: fields,
        )
      ]),
      key: r'idEspecialista',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idUsuario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idUsuario',
          fields: fields,
        )
      ]),
      key: r'idUsuario',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> fecha() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'fecha',
          fields: fields,
        )
      ]),
      key: r'fecha',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> hora() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'hora',
          fields: fields,
        )
      ]),
      key: r'hora',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> lugar() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'lugar',
          fields: fields,
        )
      ]),
      key: r'lugar',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class AgendaEmpleadosCountAggregateOutputType {
  const AgendaEmpleadosCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> idempleado() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idempleado',
          fields: fields,
        )
      ]),
      key: r'idempleado',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> idUsuario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idUsuario',
          fields: fields,
        )
      ]),
      key: r'idUsuario',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> fecha() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'fecha',
          fields: fields,
        )
      ]),
      key: r'fecha',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> hora() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'hora',
          fields: fields,
        )
      ]),
      key: r'hora',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class AgendaEmpleadosAvgAggregateOutputType {
  const AgendaEmpleadosAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> idempleado() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idempleado',
          fields: fields,
        )
      ]),
      key: r'idempleado',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> idUsuario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idUsuario',
          fields: fields,
        )
      ]),
      key: r'idUsuario',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class AgendaEmpleadosSumAggregateOutputType {
  const AgendaEmpleadosSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idempleado() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idempleado',
          fields: fields,
        )
      ]),
      key: r'idempleado',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idUsuario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idUsuario',
          fields: fields,
        )
      ]),
      key: r'idUsuario',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class AgendaEmpleadosMinAggregateOutputType {
  const AgendaEmpleadosMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idempleado() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idempleado',
          fields: fields,
        )
      ]),
      key: r'idempleado',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idUsuario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idUsuario',
          fields: fields,
        )
      ]),
      key: r'idUsuario',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> fecha() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'fecha',
          fields: fields,
        )
      ]),
      key: r'fecha',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> hora() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'hora',
          fields: fields,
        )
      ]),
      key: r'hora',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class AgendaEmpleadosMaxAggregateOutputType {
  const AgendaEmpleadosMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idempleado() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idempleado',
          fields: fields,
        )
      ]),
      key: r'idempleado',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idUsuario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idUsuario',
          fields: fields,
        )
      ]),
      key: r'idUsuario',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> fecha() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'fecha',
          fields: fields,
        )
      ]),
      key: r'fecha',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> hora() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'hora',
          fields: fields,
        )
      ]),
      key: r'hora',
    );
    return query(const []).then((value) => (value as String?));
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Ly8gVGhpcyBpcyB5b3VyIFByaXNtYSBzY2hlbWEgZmlsZSwKLy8gbGVhcm4gbW9yZSBhYm91dCBpdCBpbiB0aGUgZG9jczogaHR0cHM6Ly9wcmlzLmx5L2QvcHJpc21hLXNjaGVtYQoKZ2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgp9CgpkYXRhc291cmNlIGRiIHsKICBwcm92aWRlciA9ICJteXNxbCIKICB1cmwgICAgICA9IGVudigiREFUQUJBU0VfVVJMIikKfQoKbW9kZWwgdXN1YXJpb3N7CiAgaWQgSW50IEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpCiAgbm9tYnJlIFN0cmluZwogIGFwZWxsaWRvIFN0cmluZwogIGNlZHVsYSBTdHJpbmcKICBjb3JyZW8gU3RyaW5nIEB1bmlxdWUKICBjb250cmFzZW5hIFN0cmluZwogIHJvbCBTdHJpbmcgCn0KCm1vZGVsIGVzdGFibGVjaW1pZW50b3N7CiAgaWQgSW50IEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpCiAgbm9tYnJlIFN0cmluZwogIGRpcmVjY2lvbiBTdHJpbmcKICBjaXVkYWQgU3RyaW5nCiAgaW1hZ2VuIFN0cmluZwogIGhvcmFyaW8gU3RyaW5nCn0KCm1vZGVsIGVzcGVjaWFsaXN0YXN7CiAgaWQgSW50IEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpCiAgbm9tYnJlIFN0cmluZwogIGFwZWxsaWRvIFN0cmluZwogIHRlbGVmb25vIFN0cmluZwogIGltYWdlbiBTdHJpbmcKICBob3JhcmlvIFN0cmluZwp9Cgptb2RlbCBlbXBsZWFkb3N7CiAgaWQgSW50IEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpCiAgaWRFc3RhYmxlY2ltaWVudG8gSW50CiAgbm9tYnJlIFN0cmluZwogIGFwZWxsaWRvIFN0cmluZwogIGltYWdlbiBTdHJpbmcKICBob3JhcmlvIFN0cmluZwp9Cgptb2RlbCBhZ2VuZGFFc3BlY2lhbGlzdGF7CiAgaWQgSW50IEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpCiAgaWRFc3BlY2lhbGlzdGEgSW50CiAgaWRVc3VhcmlvIEludAogIGZlY2hhIFN0cmluZwogIGhvcmEgU3RyaW5nCiAgbHVnYXIgU3RyaW5nCn0KCm1vZGVsIGFnZW5kYUVtcGxlYWRvc3sKICBpZCBJbnQgQGlkIEBkZWZhdWx0KGF1dG9pbmNyZW1lbnQoKSkKICBpZGVtcGxlYWRvIEludAogIGlkVXN1YXJpbyBJbnQKICBmZWNoYSBTdHJpbmcKICBob3JhIFN0cmluZwp9Cg==',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'/home/michael/Documentos/ProyectosWeb/proyectoFinal/backend/node_modules/prisma/query-engine-debian-openssl-1.1.x',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );

  _i1.ModelDelegate<Usuarios> get usuarios => _i1.ModelDelegate<Usuarios>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Establecimientos> get establecimientos =>
      _i1.ModelDelegate<Establecimientos>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Especialistas> get especialistas =>
      _i1.ModelDelegate<Especialistas>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Empleados> get empleados => _i1.ModelDelegate<Empleados>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<AgendaEspecialista> get agendaEspecialista =>
      _i1.ModelDelegate<AgendaEspecialista>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<AgendaEmpleados> get agendaEmpleados =>
      _i1.ModelDelegate<AgendaEmpleados>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
