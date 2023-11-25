// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsuariosWhereInput _$UsuariosWhereInputFromJson(Map<String, dynamic> json) =>
    UsuariosWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UsuariosWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UsuariosWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UsuariosWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFilter.fromJson(json['nombre'] as Map<String, dynamic>),
      apellido: json['apellido'] == null
          ? null
          : StringFilter.fromJson(json['apellido'] as Map<String, dynamic>),
      cedula: json['cedula'] == null
          ? null
          : StringFilter.fromJson(json['cedula'] as Map<String, dynamic>),
      correo: json['correo'] == null
          ? null
          : StringFilter.fromJson(json['correo'] as Map<String, dynamic>),
      contrasena: json['contrasena'] == null
          ? null
          : StringFilter.fromJson(json['contrasena'] as Map<String, dynamic>),
      rol: json['rol'] == null
          ? null
          : StringFilter.fromJson(json['rol'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsuariosWhereInputToJson(UsuariosWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('cedula', instance.cedula?.toJson());
  writeNotNull('correo', instance.correo?.toJson());
  writeNotNull('contrasena', instance.contrasena?.toJson());
  writeNotNull('rol', instance.rol?.toJson());
  return val;
}

UsuariosOrderByWithRelationInput _$UsuariosOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    UsuariosOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
      apellido: $enumDecodeNullable(_$SortOrderEnumMap, json['apellido']),
      cedula: $enumDecodeNullable(_$SortOrderEnumMap, json['cedula']),
      correo: $enumDecodeNullable(_$SortOrderEnumMap, json['correo']),
      contrasena: $enumDecodeNullable(_$SortOrderEnumMap, json['contrasena']),
      rol: $enumDecodeNullable(_$SortOrderEnumMap, json['rol']),
    );

Map<String, dynamic> _$UsuariosOrderByWithRelationInputToJson(
    UsuariosOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('apellido', _$SortOrderEnumMap[instance.apellido]);
  writeNotNull('cedula', _$SortOrderEnumMap[instance.cedula]);
  writeNotNull('correo', _$SortOrderEnumMap[instance.correo]);
  writeNotNull('contrasena', _$SortOrderEnumMap[instance.contrasena]);
  writeNotNull('rol', _$SortOrderEnumMap[instance.rol]);
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

UsuariosWhereUniqueInput _$UsuariosWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    UsuariosWhereUniqueInput(
      id: json['id'] as int?,
      correo: json['correo'] as String?,
    );

Map<String, dynamic> _$UsuariosWhereUniqueInputToJson(
    UsuariosWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('correo', instance.correo);
  return val;
}

UsuariosOrderByWithAggregationInput
    _$UsuariosOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        UsuariosOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          apellido: $enumDecodeNullable(_$SortOrderEnumMap, json['apellido']),
          cedula: $enumDecodeNullable(_$SortOrderEnumMap, json['cedula']),
          correo: $enumDecodeNullable(_$SortOrderEnumMap, json['correo']),
          contrasena:
              $enumDecodeNullable(_$SortOrderEnumMap, json['contrasena']),
          rol: $enumDecodeNullable(_$SortOrderEnumMap, json['rol']),
          $count: json['_count'] == null
              ? null
              : UsuariosCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : UsuariosAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : UsuariosMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : UsuariosMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : UsuariosSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsuariosOrderByWithAggregationInputToJson(
    UsuariosOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('apellido', _$SortOrderEnumMap[instance.apellido]);
  writeNotNull('cedula', _$SortOrderEnumMap[instance.cedula]);
  writeNotNull('correo', _$SortOrderEnumMap[instance.correo]);
  writeNotNull('contrasena', _$SortOrderEnumMap[instance.contrasena]);
  writeNotNull('rol', _$SortOrderEnumMap[instance.rol]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

UsuariosScalarWhereWithAggregatesInput
    _$UsuariosScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        UsuariosScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              UsuariosScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              UsuariosScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              UsuariosScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          apellido: json['apellido'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['apellido'] as Map<String, dynamic>),
          cedula: json['cedula'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['cedula'] as Map<String, dynamic>),
          correo: json['correo'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['correo'] as Map<String, dynamic>),
          contrasena: json['contrasena'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['contrasena'] as Map<String, dynamic>),
          rol: json['rol'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['rol'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsuariosScalarWhereWithAggregatesInputToJson(
    UsuariosScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('cedula', instance.cedula?.toJson());
  writeNotNull('correo', instance.correo?.toJson());
  writeNotNull('contrasena', instance.contrasena?.toJson());
  writeNotNull('rol', instance.rol?.toJson());
  return val;
}

EstablecimientosWhereInput _$EstablecimientosWhereInputFromJson(
        Map<String, dynamic> json) =>
    EstablecimientosWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          EstablecimientosWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          EstablecimientosWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          EstablecimientosWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFilter.fromJson(json['nombre'] as Map<String, dynamic>),
      direccion: json['direccion'] == null
          ? null
          : StringFilter.fromJson(json['direccion'] as Map<String, dynamic>),
      ciudad: json['ciudad'] == null
          ? null
          : StringFilter.fromJson(json['ciudad'] as Map<String, dynamic>),
      imagen: json['imagen'] == null
          ? null
          : StringFilter.fromJson(json['imagen'] as Map<String, dynamic>),
      horario: json['horario'] == null
          ? null
          : StringFilter.fromJson(json['horario'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EstablecimientosWhereInputToJson(
    EstablecimientosWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('direccion', instance.direccion?.toJson());
  writeNotNull('ciudad', instance.ciudad?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EstablecimientosOrderByWithRelationInput
    _$EstablecimientosOrderByWithRelationInputFromJson(
            Map<String, dynamic> json) =>
        EstablecimientosOrderByWithRelationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          direccion: $enumDecodeNullable(_$SortOrderEnumMap, json['direccion']),
          ciudad: $enumDecodeNullable(_$SortOrderEnumMap, json['ciudad']),
          imagen: $enumDecodeNullable(_$SortOrderEnumMap, json['imagen']),
          horario: $enumDecodeNullable(_$SortOrderEnumMap, json['horario']),
        );

Map<String, dynamic> _$EstablecimientosOrderByWithRelationInputToJson(
    EstablecimientosOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('direccion', _$SortOrderEnumMap[instance.direccion]);
  writeNotNull('ciudad', _$SortOrderEnumMap[instance.ciudad]);
  writeNotNull('imagen', _$SortOrderEnumMap[instance.imagen]);
  writeNotNull('horario', _$SortOrderEnumMap[instance.horario]);
  return val;
}

EstablecimientosWhereUniqueInput _$EstablecimientosWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    EstablecimientosWhereUniqueInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$EstablecimientosWhereUniqueInputToJson(
    EstablecimientosWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

EstablecimientosOrderByWithAggregationInput
    _$EstablecimientosOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        EstablecimientosOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          direccion: $enumDecodeNullable(_$SortOrderEnumMap, json['direccion']),
          ciudad: $enumDecodeNullable(_$SortOrderEnumMap, json['ciudad']),
          imagen: $enumDecodeNullable(_$SortOrderEnumMap, json['imagen']),
          horario: $enumDecodeNullable(_$SortOrderEnumMap, json['horario']),
          $count: json['_count'] == null
              ? null
              : EstablecimientosCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : EstablecimientosAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : EstablecimientosMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : EstablecimientosMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : EstablecimientosSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EstablecimientosOrderByWithAggregationInputToJson(
    EstablecimientosOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('direccion', _$SortOrderEnumMap[instance.direccion]);
  writeNotNull('ciudad', _$SortOrderEnumMap[instance.ciudad]);
  writeNotNull('imagen', _$SortOrderEnumMap[instance.imagen]);
  writeNotNull('horario', _$SortOrderEnumMap[instance.horario]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

EstablecimientosScalarWhereWithAggregatesInput
    _$EstablecimientosScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        EstablecimientosScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              EstablecimientosScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              EstablecimientosScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              EstablecimientosScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          direccion: json['direccion'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['direccion'] as Map<String, dynamic>),
          ciudad: json['ciudad'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['ciudad'] as Map<String, dynamic>),
          imagen: json['imagen'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['imagen'] as Map<String, dynamic>),
          horario: json['horario'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['horario'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EstablecimientosScalarWhereWithAggregatesInputToJson(
    EstablecimientosScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('direccion', instance.direccion?.toJson());
  writeNotNull('ciudad', instance.ciudad?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EspecialistasWhereInput _$EspecialistasWhereInputFromJson(
        Map<String, dynamic> json) =>
    EspecialistasWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => EspecialistasWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => EspecialistasWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => EspecialistasWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFilter.fromJson(json['nombre'] as Map<String, dynamic>),
      apellido: json['apellido'] == null
          ? null
          : StringFilter.fromJson(json['apellido'] as Map<String, dynamic>),
      telefono: json['telefono'] == null
          ? null
          : StringFilter.fromJson(json['telefono'] as Map<String, dynamic>),
      imagen: json['imagen'] == null
          ? null
          : StringFilter.fromJson(json['imagen'] as Map<String, dynamic>),
      horario: json['horario'] == null
          ? null
          : StringFilter.fromJson(json['horario'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EspecialistasWhereInputToJson(
    EspecialistasWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('telefono', instance.telefono?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EspecialistasOrderByWithRelationInput
    _$EspecialistasOrderByWithRelationInputFromJson(
            Map<String, dynamic> json) =>
        EspecialistasOrderByWithRelationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          apellido: $enumDecodeNullable(_$SortOrderEnumMap, json['apellido']),
          telefono: $enumDecodeNullable(_$SortOrderEnumMap, json['telefono']),
          imagen: $enumDecodeNullable(_$SortOrderEnumMap, json['imagen']),
          horario: $enumDecodeNullable(_$SortOrderEnumMap, json['horario']),
        );

Map<String, dynamic> _$EspecialistasOrderByWithRelationInputToJson(
    EspecialistasOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('apellido', _$SortOrderEnumMap[instance.apellido]);
  writeNotNull('telefono', _$SortOrderEnumMap[instance.telefono]);
  writeNotNull('imagen', _$SortOrderEnumMap[instance.imagen]);
  writeNotNull('horario', _$SortOrderEnumMap[instance.horario]);
  return val;
}

EspecialistasWhereUniqueInput _$EspecialistasWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    EspecialistasWhereUniqueInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$EspecialistasWhereUniqueInputToJson(
    EspecialistasWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

EspecialistasOrderByWithAggregationInput
    _$EspecialistasOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        EspecialistasOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          apellido: $enumDecodeNullable(_$SortOrderEnumMap, json['apellido']),
          telefono: $enumDecodeNullable(_$SortOrderEnumMap, json['telefono']),
          imagen: $enumDecodeNullable(_$SortOrderEnumMap, json['imagen']),
          horario: $enumDecodeNullable(_$SortOrderEnumMap, json['horario']),
          $count: json['_count'] == null
              ? null
              : EspecialistasCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : EspecialistasAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : EspecialistasMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : EspecialistasMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : EspecialistasSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EspecialistasOrderByWithAggregationInputToJson(
    EspecialistasOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('apellido', _$SortOrderEnumMap[instance.apellido]);
  writeNotNull('telefono', _$SortOrderEnumMap[instance.telefono]);
  writeNotNull('imagen', _$SortOrderEnumMap[instance.imagen]);
  writeNotNull('horario', _$SortOrderEnumMap[instance.horario]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

EspecialistasScalarWhereWithAggregatesInput
    _$EspecialistasScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        EspecialistasScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              EspecialistasScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              EspecialistasScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              EspecialistasScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          apellido: json['apellido'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['apellido'] as Map<String, dynamic>),
          telefono: json['telefono'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['telefono'] as Map<String, dynamic>),
          imagen: json['imagen'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['imagen'] as Map<String, dynamic>),
          horario: json['horario'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['horario'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EspecialistasScalarWhereWithAggregatesInputToJson(
    EspecialistasScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('telefono', instance.telefono?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EmpleadosWhereInput _$EmpleadosWhereInputFromJson(Map<String, dynamic> json) =>
    EmpleadosWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => EmpleadosWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => EmpleadosWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => EmpleadosWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      idEstablecimiento: json['idEstablecimiento'] == null
          ? null
          : IntFilter.fromJson(
              json['idEstablecimiento'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFilter.fromJson(json['nombre'] as Map<String, dynamic>),
      apellido: json['apellido'] == null
          ? null
          : StringFilter.fromJson(json['apellido'] as Map<String, dynamic>),
      imagen: json['imagen'] == null
          ? null
          : StringFilter.fromJson(json['imagen'] as Map<String, dynamic>),
      horario: json['horario'] == null
          ? null
          : StringFilter.fromJson(json['horario'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmpleadosWhereInputToJson(EmpleadosWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('idEstablecimiento', instance.idEstablecimiento?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EmpleadosOrderByWithRelationInput _$EmpleadosOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    EmpleadosOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      idEstablecimiento:
          $enumDecodeNullable(_$SortOrderEnumMap, json['idEstablecimiento']),
      nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
      apellido: $enumDecodeNullable(_$SortOrderEnumMap, json['apellido']),
      imagen: $enumDecodeNullable(_$SortOrderEnumMap, json['imagen']),
      horario: $enumDecodeNullable(_$SortOrderEnumMap, json['horario']),
    );

Map<String, dynamic> _$EmpleadosOrderByWithRelationInputToJson(
    EmpleadosOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull(
      'idEstablecimiento', _$SortOrderEnumMap[instance.idEstablecimiento]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('apellido', _$SortOrderEnumMap[instance.apellido]);
  writeNotNull('imagen', _$SortOrderEnumMap[instance.imagen]);
  writeNotNull('horario', _$SortOrderEnumMap[instance.horario]);
  return val;
}

EmpleadosWhereUniqueInput _$EmpleadosWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    EmpleadosWhereUniqueInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$EmpleadosWhereUniqueInputToJson(
    EmpleadosWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

EmpleadosOrderByWithAggregationInput
    _$EmpleadosOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        EmpleadosOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idEstablecimiento: $enumDecodeNullable(
              _$SortOrderEnumMap, json['idEstablecimiento']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          apellido: $enumDecodeNullable(_$SortOrderEnumMap, json['apellido']),
          imagen: $enumDecodeNullable(_$SortOrderEnumMap, json['imagen']),
          horario: $enumDecodeNullable(_$SortOrderEnumMap, json['horario']),
          $count: json['_count'] == null
              ? null
              : EmpleadosCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : EmpleadosAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : EmpleadosMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : EmpleadosMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : EmpleadosSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmpleadosOrderByWithAggregationInputToJson(
    EmpleadosOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull(
      'idEstablecimiento', _$SortOrderEnumMap[instance.idEstablecimiento]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('apellido', _$SortOrderEnumMap[instance.apellido]);
  writeNotNull('imagen', _$SortOrderEnumMap[instance.imagen]);
  writeNotNull('horario', _$SortOrderEnumMap[instance.horario]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

EmpleadosScalarWhereWithAggregatesInput
    _$EmpleadosScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        EmpleadosScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              EmpleadosScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              EmpleadosScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              EmpleadosScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          idEstablecimiento: json['idEstablecimiento'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['idEstablecimiento'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          apellido: json['apellido'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['apellido'] as Map<String, dynamic>),
          imagen: json['imagen'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['imagen'] as Map<String, dynamic>),
          horario: json['horario'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['horario'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmpleadosScalarWhereWithAggregatesInputToJson(
    EmpleadosScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('idEstablecimiento', instance.idEstablecimiento?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

AgendaEspecialistaWhereInput _$AgendaEspecialistaWhereInputFromJson(
        Map<String, dynamic> json) =>
    AgendaEspecialistaWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          AgendaEspecialistaWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          AgendaEspecialistaWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          AgendaEspecialistaWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      idEspecialista: json['idEspecialista'] == null
          ? null
          : IntFilter.fromJson(json['idEspecialista'] as Map<String, dynamic>),
      idUsuario: json['idUsuario'] == null
          ? null
          : IntFilter.fromJson(json['idUsuario'] as Map<String, dynamic>),
      fecha: json['fecha'] == null
          ? null
          : StringFilter.fromJson(json['fecha'] as Map<String, dynamic>),
      hora: json['hora'] == null
          ? null
          : StringFilter.fromJson(json['hora'] as Map<String, dynamic>),
      lugar: json['lugar'] == null
          ? null
          : StringFilter.fromJson(json['lugar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AgendaEspecialistaWhereInputToJson(
    AgendaEspecialistaWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('idEspecialista', instance.idEspecialista?.toJson());
  writeNotNull('idUsuario', instance.idUsuario?.toJson());
  writeNotNull('fecha', instance.fecha?.toJson());
  writeNotNull('hora', instance.hora?.toJson());
  writeNotNull('lugar', instance.lugar?.toJson());
  return val;
}

AgendaEspecialistaOrderByWithRelationInput
    _$AgendaEspecialistaOrderByWithRelationInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEspecialistaOrderByWithRelationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idEspecialista:
              $enumDecodeNullable(_$SortOrderEnumMap, json['idEspecialista']),
          idUsuario: $enumDecodeNullable(_$SortOrderEnumMap, json['idUsuario']),
          fecha: $enumDecodeNullable(_$SortOrderEnumMap, json['fecha']),
          hora: $enumDecodeNullable(_$SortOrderEnumMap, json['hora']),
          lugar: $enumDecodeNullable(_$SortOrderEnumMap, json['lugar']),
        );

Map<String, dynamic> _$AgendaEspecialistaOrderByWithRelationInputToJson(
    AgendaEspecialistaOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('idEspecialista', _$SortOrderEnumMap[instance.idEspecialista]);
  writeNotNull('idUsuario', _$SortOrderEnumMap[instance.idUsuario]);
  writeNotNull('fecha', _$SortOrderEnumMap[instance.fecha]);
  writeNotNull('hora', _$SortOrderEnumMap[instance.hora]);
  writeNotNull('lugar', _$SortOrderEnumMap[instance.lugar]);
  return val;
}

AgendaEspecialistaWhereUniqueInput _$AgendaEspecialistaWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    AgendaEspecialistaWhereUniqueInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$AgendaEspecialistaWhereUniqueInputToJson(
    AgendaEspecialistaWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

AgendaEspecialistaOrderByWithAggregationInput
    _$AgendaEspecialistaOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEspecialistaOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idEspecialista:
              $enumDecodeNullable(_$SortOrderEnumMap, json['idEspecialista']),
          idUsuario: $enumDecodeNullable(_$SortOrderEnumMap, json['idUsuario']),
          fecha: $enumDecodeNullable(_$SortOrderEnumMap, json['fecha']),
          hora: $enumDecodeNullable(_$SortOrderEnumMap, json['hora']),
          lugar: $enumDecodeNullable(_$SortOrderEnumMap, json['lugar']),
          $count: json['_count'] == null
              ? null
              : AgendaEspecialistaCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : AgendaEspecialistaAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : AgendaEspecialistaMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : AgendaEspecialistaMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : AgendaEspecialistaSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AgendaEspecialistaOrderByWithAggregationInputToJson(
    AgendaEspecialistaOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('idEspecialista', _$SortOrderEnumMap[instance.idEspecialista]);
  writeNotNull('idUsuario', _$SortOrderEnumMap[instance.idUsuario]);
  writeNotNull('fecha', _$SortOrderEnumMap[instance.fecha]);
  writeNotNull('hora', _$SortOrderEnumMap[instance.hora]);
  writeNotNull('lugar', _$SortOrderEnumMap[instance.lugar]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

AgendaEspecialistaScalarWhereWithAggregatesInput
    _$AgendaEspecialistaScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEspecialistaScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              AgendaEspecialistaScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              AgendaEspecialistaScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              AgendaEspecialistaScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          idEspecialista: json['idEspecialista'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['idEspecialista'] as Map<String, dynamic>),
          idUsuario: json['idUsuario'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['idUsuario'] as Map<String, dynamic>),
          fecha: json['fecha'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['fecha'] as Map<String, dynamic>),
          hora: json['hora'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['hora'] as Map<String, dynamic>),
          lugar: json['lugar'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['lugar'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AgendaEspecialistaScalarWhereWithAggregatesInputToJson(
    AgendaEspecialistaScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('idEspecialista', instance.idEspecialista?.toJson());
  writeNotNull('idUsuario', instance.idUsuario?.toJson());
  writeNotNull('fecha', instance.fecha?.toJson());
  writeNotNull('hora', instance.hora?.toJson());
  writeNotNull('lugar', instance.lugar?.toJson());
  return val;
}

AgendaEmpleadosWhereInput _$AgendaEmpleadosWhereInputFromJson(
        Map<String, dynamic> json) =>
    AgendaEmpleadosWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => AgendaEmpleadosWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => AgendaEmpleadosWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => AgendaEmpleadosWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      idempleado: json['idempleado'] == null
          ? null
          : IntFilter.fromJson(json['idempleado'] as Map<String, dynamic>),
      idUsuario: json['idUsuario'] == null
          ? null
          : IntFilter.fromJson(json['idUsuario'] as Map<String, dynamic>),
      fecha: json['fecha'] == null
          ? null
          : StringFilter.fromJson(json['fecha'] as Map<String, dynamic>),
      hora: json['hora'] == null
          ? null
          : StringFilter.fromJson(json['hora'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AgendaEmpleadosWhereInputToJson(
    AgendaEmpleadosWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('idempleado', instance.idempleado?.toJson());
  writeNotNull('idUsuario', instance.idUsuario?.toJson());
  writeNotNull('fecha', instance.fecha?.toJson());
  writeNotNull('hora', instance.hora?.toJson());
  return val;
}

AgendaEmpleadosOrderByWithRelationInput
    _$AgendaEmpleadosOrderByWithRelationInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEmpleadosOrderByWithRelationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idempleado:
              $enumDecodeNullable(_$SortOrderEnumMap, json['idempleado']),
          idUsuario: $enumDecodeNullable(_$SortOrderEnumMap, json['idUsuario']),
          fecha: $enumDecodeNullable(_$SortOrderEnumMap, json['fecha']),
          hora: $enumDecodeNullable(_$SortOrderEnumMap, json['hora']),
        );

Map<String, dynamic> _$AgendaEmpleadosOrderByWithRelationInputToJson(
    AgendaEmpleadosOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('idempleado', _$SortOrderEnumMap[instance.idempleado]);
  writeNotNull('idUsuario', _$SortOrderEnumMap[instance.idUsuario]);
  writeNotNull('fecha', _$SortOrderEnumMap[instance.fecha]);
  writeNotNull('hora', _$SortOrderEnumMap[instance.hora]);
  return val;
}

AgendaEmpleadosWhereUniqueInput _$AgendaEmpleadosWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    AgendaEmpleadosWhereUniqueInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$AgendaEmpleadosWhereUniqueInputToJson(
    AgendaEmpleadosWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

AgendaEmpleadosOrderByWithAggregationInput
    _$AgendaEmpleadosOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEmpleadosOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idempleado:
              $enumDecodeNullable(_$SortOrderEnumMap, json['idempleado']),
          idUsuario: $enumDecodeNullable(_$SortOrderEnumMap, json['idUsuario']),
          fecha: $enumDecodeNullable(_$SortOrderEnumMap, json['fecha']),
          hora: $enumDecodeNullable(_$SortOrderEnumMap, json['hora']),
          $count: json['_count'] == null
              ? null
              : AgendaEmpleadosCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : AgendaEmpleadosAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : AgendaEmpleadosMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : AgendaEmpleadosMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : AgendaEmpleadosSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AgendaEmpleadosOrderByWithAggregationInputToJson(
    AgendaEmpleadosOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('idempleado', _$SortOrderEnumMap[instance.idempleado]);
  writeNotNull('idUsuario', _$SortOrderEnumMap[instance.idUsuario]);
  writeNotNull('fecha', _$SortOrderEnumMap[instance.fecha]);
  writeNotNull('hora', _$SortOrderEnumMap[instance.hora]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

AgendaEmpleadosScalarWhereWithAggregatesInput
    _$AgendaEmpleadosScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEmpleadosScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              AgendaEmpleadosScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              AgendaEmpleadosScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              AgendaEmpleadosScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          idempleado: json['idempleado'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['idempleado'] as Map<String, dynamic>),
          idUsuario: json['idUsuario'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['idUsuario'] as Map<String, dynamic>),
          fecha: json['fecha'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['fecha'] as Map<String, dynamic>),
          hora: json['hora'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['hora'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AgendaEmpleadosScalarWhereWithAggregatesInputToJson(
    AgendaEmpleadosScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('idempleado', instance.idempleado?.toJson());
  writeNotNull('idUsuario', instance.idUsuario?.toJson());
  writeNotNull('fecha', instance.fecha?.toJson());
  writeNotNull('hora', instance.hora?.toJson());
  return val;
}

UsuariosCreateInput _$UsuariosCreateInputFromJson(Map<String, dynamic> json) =>
    UsuariosCreateInput(
      nombre: json['nombre'] as String,
      apellido: json['apellido'] as String,
      cedula: json['cedula'] as String,
      correo: json['correo'] as String,
      contrasena: json['contrasena'] as String,
      rol: json['rol'] as String,
    );

Map<String, dynamic> _$UsuariosCreateInputToJson(
        UsuariosCreateInput instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'apellido': instance.apellido,
      'cedula': instance.cedula,
      'correo': instance.correo,
      'contrasena': instance.contrasena,
      'rol': instance.rol,
    };

UsuariosUncheckedCreateInput _$UsuariosUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    UsuariosUncheckedCreateInput(
      id: json['id'] as int?,
      nombre: json['nombre'] as String,
      apellido: json['apellido'] as String,
      cedula: json['cedula'] as String,
      correo: json['correo'] as String,
      contrasena: json['contrasena'] as String,
      rol: json['rol'] as String,
    );

Map<String, dynamic> _$UsuariosUncheckedCreateInputToJson(
    UsuariosUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['apellido'] = instance.apellido;
  val['cedula'] = instance.cedula;
  val['correo'] = instance.correo;
  val['contrasena'] = instance.contrasena;
  val['rol'] = instance.rol;
  return val;
}

UsuariosUpdateInput _$UsuariosUpdateInputFromJson(Map<String, dynamic> json) =>
    UsuariosUpdateInput(
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      apellido: json['apellido'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['apellido'] as Map<String, dynamic>),
      cedula: json['cedula'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['cedula'] as Map<String, dynamic>),
      correo: json['correo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['correo'] as Map<String, dynamic>),
      contrasena: json['contrasena'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['contrasena'] as Map<String, dynamic>),
      rol: json['rol'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['rol'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsuariosUpdateInputToJson(UsuariosUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('cedula', instance.cedula?.toJson());
  writeNotNull('correo', instance.correo?.toJson());
  writeNotNull('contrasena', instance.contrasena?.toJson());
  writeNotNull('rol', instance.rol?.toJson());
  return val;
}

UsuariosUncheckedUpdateInput _$UsuariosUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    UsuariosUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      apellido: json['apellido'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['apellido'] as Map<String, dynamic>),
      cedula: json['cedula'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['cedula'] as Map<String, dynamic>),
      correo: json['correo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['correo'] as Map<String, dynamic>),
      contrasena: json['contrasena'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['contrasena'] as Map<String, dynamic>),
      rol: json['rol'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['rol'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsuariosUncheckedUpdateInputToJson(
    UsuariosUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('cedula', instance.cedula?.toJson());
  writeNotNull('correo', instance.correo?.toJson());
  writeNotNull('contrasena', instance.contrasena?.toJson());
  writeNotNull('rol', instance.rol?.toJson());
  return val;
}

UsuariosCreateManyInput _$UsuariosCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    UsuariosCreateManyInput(
      id: json['id'] as int?,
      nombre: json['nombre'] as String,
      apellido: json['apellido'] as String,
      cedula: json['cedula'] as String,
      correo: json['correo'] as String,
      contrasena: json['contrasena'] as String,
      rol: json['rol'] as String,
    );

Map<String, dynamic> _$UsuariosCreateManyInputToJson(
    UsuariosCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['apellido'] = instance.apellido;
  val['cedula'] = instance.cedula;
  val['correo'] = instance.correo;
  val['contrasena'] = instance.contrasena;
  val['rol'] = instance.rol;
  return val;
}

UsuariosUpdateManyMutationInput _$UsuariosUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    UsuariosUpdateManyMutationInput(
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      apellido: json['apellido'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['apellido'] as Map<String, dynamic>),
      cedula: json['cedula'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['cedula'] as Map<String, dynamic>),
      correo: json['correo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['correo'] as Map<String, dynamic>),
      contrasena: json['contrasena'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['contrasena'] as Map<String, dynamic>),
      rol: json['rol'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['rol'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsuariosUpdateManyMutationInputToJson(
    UsuariosUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('cedula', instance.cedula?.toJson());
  writeNotNull('correo', instance.correo?.toJson());
  writeNotNull('contrasena', instance.contrasena?.toJson());
  writeNotNull('rol', instance.rol?.toJson());
  return val;
}

UsuariosUncheckedUpdateManyInput _$UsuariosUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    UsuariosUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      apellido: json['apellido'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['apellido'] as Map<String, dynamic>),
      cedula: json['cedula'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['cedula'] as Map<String, dynamic>),
      correo: json['correo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['correo'] as Map<String, dynamic>),
      contrasena: json['contrasena'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['contrasena'] as Map<String, dynamic>),
      rol: json['rol'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['rol'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsuariosUncheckedUpdateManyInputToJson(
    UsuariosUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('cedula', instance.cedula?.toJson());
  writeNotNull('correo', instance.correo?.toJson());
  writeNotNull('contrasena', instance.contrasena?.toJson());
  writeNotNull('rol', instance.rol?.toJson());
  return val;
}

EstablecimientosCreateInput _$EstablecimientosCreateInputFromJson(
        Map<String, dynamic> json) =>
    EstablecimientosCreateInput(
      nombre: json['nombre'] as String,
      direccion: json['direccion'] as String,
      ciudad: json['ciudad'] as String,
      imagen: json['imagen'] as String,
      horario: json['horario'] as String,
    );

Map<String, dynamic> _$EstablecimientosCreateInputToJson(
        EstablecimientosCreateInput instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'direccion': instance.direccion,
      'ciudad': instance.ciudad,
      'imagen': instance.imagen,
      'horario': instance.horario,
    };

EstablecimientosUncheckedCreateInput
    _$EstablecimientosUncheckedCreateInputFromJson(Map<String, dynamic> json) =>
        EstablecimientosUncheckedCreateInput(
          id: json['id'] as int?,
          nombre: json['nombre'] as String,
          direccion: json['direccion'] as String,
          ciudad: json['ciudad'] as String,
          imagen: json['imagen'] as String,
          horario: json['horario'] as String,
        );

Map<String, dynamic> _$EstablecimientosUncheckedCreateInputToJson(
    EstablecimientosUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['direccion'] = instance.direccion;
  val['ciudad'] = instance.ciudad;
  val['imagen'] = instance.imagen;
  val['horario'] = instance.horario;
  return val;
}

EstablecimientosUpdateInput _$EstablecimientosUpdateInputFromJson(
        Map<String, dynamic> json) =>
    EstablecimientosUpdateInput(
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      direccion: json['direccion'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['direccion'] as Map<String, dynamic>),
      ciudad: json['ciudad'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['ciudad'] as Map<String, dynamic>),
      imagen: json['imagen'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['imagen'] as Map<String, dynamic>),
      horario: json['horario'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['horario'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EstablecimientosUpdateInputToJson(
    EstablecimientosUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('direccion', instance.direccion?.toJson());
  writeNotNull('ciudad', instance.ciudad?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EstablecimientosUncheckedUpdateInput
    _$EstablecimientosUncheckedUpdateInputFromJson(Map<String, dynamic> json) =>
        EstablecimientosUncheckedUpdateInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          direccion: json['direccion'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['direccion'] as Map<String, dynamic>),
          ciudad: json['ciudad'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['ciudad'] as Map<String, dynamic>),
          imagen: json['imagen'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['imagen'] as Map<String, dynamic>),
          horario: json['horario'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['horario'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EstablecimientosUncheckedUpdateInputToJson(
    EstablecimientosUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('direccion', instance.direccion?.toJson());
  writeNotNull('ciudad', instance.ciudad?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EstablecimientosCreateManyInput _$EstablecimientosCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    EstablecimientosCreateManyInput(
      id: json['id'] as int?,
      nombre: json['nombre'] as String,
      direccion: json['direccion'] as String,
      ciudad: json['ciudad'] as String,
      imagen: json['imagen'] as String,
      horario: json['horario'] as String,
    );

Map<String, dynamic> _$EstablecimientosCreateManyInputToJson(
    EstablecimientosCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['direccion'] = instance.direccion;
  val['ciudad'] = instance.ciudad;
  val['imagen'] = instance.imagen;
  val['horario'] = instance.horario;
  return val;
}

EstablecimientosUpdateManyMutationInput
    _$EstablecimientosUpdateManyMutationInputFromJson(
            Map<String, dynamic> json) =>
        EstablecimientosUpdateManyMutationInput(
          nombre: json['nombre'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          direccion: json['direccion'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['direccion'] as Map<String, dynamic>),
          ciudad: json['ciudad'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['ciudad'] as Map<String, dynamic>),
          imagen: json['imagen'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['imagen'] as Map<String, dynamic>),
          horario: json['horario'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['horario'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EstablecimientosUpdateManyMutationInputToJson(
    EstablecimientosUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('direccion', instance.direccion?.toJson());
  writeNotNull('ciudad', instance.ciudad?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EstablecimientosUncheckedUpdateManyInput
    _$EstablecimientosUncheckedUpdateManyInputFromJson(
            Map<String, dynamic> json) =>
        EstablecimientosUncheckedUpdateManyInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          direccion: json['direccion'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['direccion'] as Map<String, dynamic>),
          ciudad: json['ciudad'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['ciudad'] as Map<String, dynamic>),
          imagen: json['imagen'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['imagen'] as Map<String, dynamic>),
          horario: json['horario'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['horario'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EstablecimientosUncheckedUpdateManyInputToJson(
    EstablecimientosUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('direccion', instance.direccion?.toJson());
  writeNotNull('ciudad', instance.ciudad?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EspecialistasCreateInput _$EspecialistasCreateInputFromJson(
        Map<String, dynamic> json) =>
    EspecialistasCreateInput(
      nombre: json['nombre'] as String,
      apellido: json['apellido'] as String,
      telefono: json['telefono'] as String,
      imagen: json['imagen'] as String,
      horario: json['horario'] as String,
    );

Map<String, dynamic> _$EspecialistasCreateInputToJson(
        EspecialistasCreateInput instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'apellido': instance.apellido,
      'telefono': instance.telefono,
      'imagen': instance.imagen,
      'horario': instance.horario,
    };

EspecialistasUncheckedCreateInput _$EspecialistasUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    EspecialistasUncheckedCreateInput(
      id: json['id'] as int?,
      nombre: json['nombre'] as String,
      apellido: json['apellido'] as String,
      telefono: json['telefono'] as String,
      imagen: json['imagen'] as String,
      horario: json['horario'] as String,
    );

Map<String, dynamic> _$EspecialistasUncheckedCreateInputToJson(
    EspecialistasUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['apellido'] = instance.apellido;
  val['telefono'] = instance.telefono;
  val['imagen'] = instance.imagen;
  val['horario'] = instance.horario;
  return val;
}

EspecialistasUpdateInput _$EspecialistasUpdateInputFromJson(
        Map<String, dynamic> json) =>
    EspecialistasUpdateInput(
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      apellido: json['apellido'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['apellido'] as Map<String, dynamic>),
      telefono: json['telefono'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['telefono'] as Map<String, dynamic>),
      imagen: json['imagen'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['imagen'] as Map<String, dynamic>),
      horario: json['horario'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['horario'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EspecialistasUpdateInputToJson(
    EspecialistasUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('telefono', instance.telefono?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EspecialistasUncheckedUpdateInput _$EspecialistasUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    EspecialistasUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      apellido: json['apellido'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['apellido'] as Map<String, dynamic>),
      telefono: json['telefono'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['telefono'] as Map<String, dynamic>),
      imagen: json['imagen'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['imagen'] as Map<String, dynamic>),
      horario: json['horario'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['horario'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EspecialistasUncheckedUpdateInputToJson(
    EspecialistasUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('telefono', instance.telefono?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EspecialistasCreateManyInput _$EspecialistasCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    EspecialistasCreateManyInput(
      id: json['id'] as int?,
      nombre: json['nombre'] as String,
      apellido: json['apellido'] as String,
      telefono: json['telefono'] as String,
      imagen: json['imagen'] as String,
      horario: json['horario'] as String,
    );

Map<String, dynamic> _$EspecialistasCreateManyInputToJson(
    EspecialistasCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['apellido'] = instance.apellido;
  val['telefono'] = instance.telefono;
  val['imagen'] = instance.imagen;
  val['horario'] = instance.horario;
  return val;
}

EspecialistasUpdateManyMutationInput
    _$EspecialistasUpdateManyMutationInputFromJson(Map<String, dynamic> json) =>
        EspecialistasUpdateManyMutationInput(
          nombre: json['nombre'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          apellido: json['apellido'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['apellido'] as Map<String, dynamic>),
          telefono: json['telefono'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['telefono'] as Map<String, dynamic>),
          imagen: json['imagen'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['imagen'] as Map<String, dynamic>),
          horario: json['horario'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['horario'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EspecialistasUpdateManyMutationInputToJson(
    EspecialistasUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('telefono', instance.telefono?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EspecialistasUncheckedUpdateManyInput
    _$EspecialistasUncheckedUpdateManyInputFromJson(
            Map<String, dynamic> json) =>
        EspecialistasUncheckedUpdateManyInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          apellido: json['apellido'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['apellido'] as Map<String, dynamic>),
          telefono: json['telefono'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['telefono'] as Map<String, dynamic>),
          imagen: json['imagen'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['imagen'] as Map<String, dynamic>),
          horario: json['horario'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['horario'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EspecialistasUncheckedUpdateManyInputToJson(
    EspecialistasUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('telefono', instance.telefono?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EmpleadosCreateInput _$EmpleadosCreateInputFromJson(
        Map<String, dynamic> json) =>
    EmpleadosCreateInput(
      idEstablecimiento: json['idEstablecimiento'] as int,
      nombre: json['nombre'] as String,
      apellido: json['apellido'] as String,
      imagen: json['imagen'] as String,
      horario: json['horario'] as String,
    );

Map<String, dynamic> _$EmpleadosCreateInputToJson(
        EmpleadosCreateInput instance) =>
    <String, dynamic>{
      'idEstablecimiento': instance.idEstablecimiento,
      'nombre': instance.nombre,
      'apellido': instance.apellido,
      'imagen': instance.imagen,
      'horario': instance.horario,
    };

EmpleadosUncheckedCreateInput _$EmpleadosUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    EmpleadosUncheckedCreateInput(
      id: json['id'] as int?,
      idEstablecimiento: json['idEstablecimiento'] as int,
      nombre: json['nombre'] as String,
      apellido: json['apellido'] as String,
      imagen: json['imagen'] as String,
      horario: json['horario'] as String,
    );

Map<String, dynamic> _$EmpleadosUncheckedCreateInputToJson(
    EmpleadosUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['idEstablecimiento'] = instance.idEstablecimiento;
  val['nombre'] = instance.nombre;
  val['apellido'] = instance.apellido;
  val['imagen'] = instance.imagen;
  val['horario'] = instance.horario;
  return val;
}

EmpleadosUpdateInput _$EmpleadosUpdateInputFromJson(
        Map<String, dynamic> json) =>
    EmpleadosUpdateInput(
      idEstablecimiento: json['idEstablecimiento'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['idEstablecimiento'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      apellido: json['apellido'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['apellido'] as Map<String, dynamic>),
      imagen: json['imagen'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['imagen'] as Map<String, dynamic>),
      horario: json['horario'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['horario'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmpleadosUpdateInputToJson(
    EmpleadosUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idEstablecimiento', instance.idEstablecimiento?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EmpleadosUncheckedUpdateInput _$EmpleadosUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    EmpleadosUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      idEstablecimiento: json['idEstablecimiento'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['idEstablecimiento'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      apellido: json['apellido'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['apellido'] as Map<String, dynamic>),
      imagen: json['imagen'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['imagen'] as Map<String, dynamic>),
      horario: json['horario'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['horario'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmpleadosUncheckedUpdateInputToJson(
    EmpleadosUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('idEstablecimiento', instance.idEstablecimiento?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EmpleadosCreateManyInput _$EmpleadosCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    EmpleadosCreateManyInput(
      id: json['id'] as int?,
      idEstablecimiento: json['idEstablecimiento'] as int,
      nombre: json['nombre'] as String,
      apellido: json['apellido'] as String,
      imagen: json['imagen'] as String,
      horario: json['horario'] as String,
    );

Map<String, dynamic> _$EmpleadosCreateManyInputToJson(
    EmpleadosCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['idEstablecimiento'] = instance.idEstablecimiento;
  val['nombre'] = instance.nombre;
  val['apellido'] = instance.apellido;
  val['imagen'] = instance.imagen;
  val['horario'] = instance.horario;
  return val;
}

EmpleadosUpdateManyMutationInput _$EmpleadosUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    EmpleadosUpdateManyMutationInput(
      idEstablecimiento: json['idEstablecimiento'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['idEstablecimiento'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      apellido: json['apellido'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['apellido'] as Map<String, dynamic>),
      imagen: json['imagen'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['imagen'] as Map<String, dynamic>),
      horario: json['horario'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['horario'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmpleadosUpdateManyMutationInputToJson(
    EmpleadosUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idEstablecimiento', instance.idEstablecimiento?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

EmpleadosUncheckedUpdateManyInput _$EmpleadosUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    EmpleadosUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      idEstablecimiento: json['idEstablecimiento'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['idEstablecimiento'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      apellido: json['apellido'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['apellido'] as Map<String, dynamic>),
      imagen: json['imagen'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['imagen'] as Map<String, dynamic>),
      horario: json['horario'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['horario'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmpleadosUncheckedUpdateManyInputToJson(
    EmpleadosUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('idEstablecimiento', instance.idEstablecimiento?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('apellido', instance.apellido?.toJson());
  writeNotNull('imagen', instance.imagen?.toJson());
  writeNotNull('horario', instance.horario?.toJson());
  return val;
}

AgendaEspecialistaCreateInput _$AgendaEspecialistaCreateInputFromJson(
        Map<String, dynamic> json) =>
    AgendaEspecialistaCreateInput(
      idEspecialista: json['idEspecialista'] as int,
      idUsuario: json['idUsuario'] as int,
      fecha: json['fecha'] as String,
      hora: json['hora'] as String,
      lugar: json['lugar'] as String,
    );

Map<String, dynamic> _$AgendaEspecialistaCreateInputToJson(
        AgendaEspecialistaCreateInput instance) =>
    <String, dynamic>{
      'idEspecialista': instance.idEspecialista,
      'idUsuario': instance.idUsuario,
      'fecha': instance.fecha,
      'hora': instance.hora,
      'lugar': instance.lugar,
    };

AgendaEspecialistaUncheckedCreateInput
    _$AgendaEspecialistaUncheckedCreateInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEspecialistaUncheckedCreateInput(
          id: json['id'] as int?,
          idEspecialista: json['idEspecialista'] as int,
          idUsuario: json['idUsuario'] as int,
          fecha: json['fecha'] as String,
          hora: json['hora'] as String,
          lugar: json['lugar'] as String,
        );

Map<String, dynamic> _$AgendaEspecialistaUncheckedCreateInputToJson(
    AgendaEspecialistaUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['idEspecialista'] = instance.idEspecialista;
  val['idUsuario'] = instance.idUsuario;
  val['fecha'] = instance.fecha;
  val['hora'] = instance.hora;
  val['lugar'] = instance.lugar;
  return val;
}

AgendaEspecialistaUpdateInput _$AgendaEspecialistaUpdateInputFromJson(
        Map<String, dynamic> json) =>
    AgendaEspecialistaUpdateInput(
      idEspecialista: json['idEspecialista'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['idEspecialista'] as Map<String, dynamic>),
      idUsuario: json['idUsuario'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['idUsuario'] as Map<String, dynamic>),
      fecha: json['fecha'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['fecha'] as Map<String, dynamic>),
      hora: json['hora'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['hora'] as Map<String, dynamic>),
      lugar: json['lugar'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['lugar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AgendaEspecialistaUpdateInputToJson(
    AgendaEspecialistaUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idEspecialista', instance.idEspecialista?.toJson());
  writeNotNull('idUsuario', instance.idUsuario?.toJson());
  writeNotNull('fecha', instance.fecha?.toJson());
  writeNotNull('hora', instance.hora?.toJson());
  writeNotNull('lugar', instance.lugar?.toJson());
  return val;
}

AgendaEspecialistaUncheckedUpdateInput
    _$AgendaEspecialistaUncheckedUpdateInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEspecialistaUncheckedUpdateInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          idEspecialista: json['idEspecialista'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idEspecialista'] as Map<String, dynamic>),
          idUsuario: json['idUsuario'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idUsuario'] as Map<String, dynamic>),
          fecha: json['fecha'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['fecha'] as Map<String, dynamic>),
          hora: json['hora'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['hora'] as Map<String, dynamic>),
          lugar: json['lugar'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['lugar'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AgendaEspecialistaUncheckedUpdateInputToJson(
    AgendaEspecialistaUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('idEspecialista', instance.idEspecialista?.toJson());
  writeNotNull('idUsuario', instance.idUsuario?.toJson());
  writeNotNull('fecha', instance.fecha?.toJson());
  writeNotNull('hora', instance.hora?.toJson());
  writeNotNull('lugar', instance.lugar?.toJson());
  return val;
}

AgendaEspecialistaCreateManyInput _$AgendaEspecialistaCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    AgendaEspecialistaCreateManyInput(
      id: json['id'] as int?,
      idEspecialista: json['idEspecialista'] as int,
      idUsuario: json['idUsuario'] as int,
      fecha: json['fecha'] as String,
      hora: json['hora'] as String,
      lugar: json['lugar'] as String,
    );

Map<String, dynamic> _$AgendaEspecialistaCreateManyInputToJson(
    AgendaEspecialistaCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['idEspecialista'] = instance.idEspecialista;
  val['idUsuario'] = instance.idUsuario;
  val['fecha'] = instance.fecha;
  val['hora'] = instance.hora;
  val['lugar'] = instance.lugar;
  return val;
}

AgendaEspecialistaUpdateManyMutationInput
    _$AgendaEspecialistaUpdateManyMutationInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEspecialistaUpdateManyMutationInput(
          idEspecialista: json['idEspecialista'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idEspecialista'] as Map<String, dynamic>),
          idUsuario: json['idUsuario'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idUsuario'] as Map<String, dynamic>),
          fecha: json['fecha'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['fecha'] as Map<String, dynamic>),
          hora: json['hora'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['hora'] as Map<String, dynamic>),
          lugar: json['lugar'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['lugar'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AgendaEspecialistaUpdateManyMutationInputToJson(
    AgendaEspecialistaUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idEspecialista', instance.idEspecialista?.toJson());
  writeNotNull('idUsuario', instance.idUsuario?.toJson());
  writeNotNull('fecha', instance.fecha?.toJson());
  writeNotNull('hora', instance.hora?.toJson());
  writeNotNull('lugar', instance.lugar?.toJson());
  return val;
}

AgendaEspecialistaUncheckedUpdateManyInput
    _$AgendaEspecialistaUncheckedUpdateManyInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEspecialistaUncheckedUpdateManyInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          idEspecialista: json['idEspecialista'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idEspecialista'] as Map<String, dynamic>),
          idUsuario: json['idUsuario'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idUsuario'] as Map<String, dynamic>),
          fecha: json['fecha'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['fecha'] as Map<String, dynamic>),
          hora: json['hora'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['hora'] as Map<String, dynamic>),
          lugar: json['lugar'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['lugar'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AgendaEspecialistaUncheckedUpdateManyInputToJson(
    AgendaEspecialistaUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('idEspecialista', instance.idEspecialista?.toJson());
  writeNotNull('idUsuario', instance.idUsuario?.toJson());
  writeNotNull('fecha', instance.fecha?.toJson());
  writeNotNull('hora', instance.hora?.toJson());
  writeNotNull('lugar', instance.lugar?.toJson());
  return val;
}

AgendaEmpleadosCreateInput _$AgendaEmpleadosCreateInputFromJson(
        Map<String, dynamic> json) =>
    AgendaEmpleadosCreateInput(
      idempleado: json['idempleado'] as int,
      idUsuario: json['idUsuario'] as int,
      fecha: json['fecha'] as String,
      hora: json['hora'] as String,
    );

Map<String, dynamic> _$AgendaEmpleadosCreateInputToJson(
        AgendaEmpleadosCreateInput instance) =>
    <String, dynamic>{
      'idempleado': instance.idempleado,
      'idUsuario': instance.idUsuario,
      'fecha': instance.fecha,
      'hora': instance.hora,
    };

AgendaEmpleadosUncheckedCreateInput
    _$AgendaEmpleadosUncheckedCreateInputFromJson(Map<String, dynamic> json) =>
        AgendaEmpleadosUncheckedCreateInput(
          id: json['id'] as int?,
          idempleado: json['idempleado'] as int,
          idUsuario: json['idUsuario'] as int,
          fecha: json['fecha'] as String,
          hora: json['hora'] as String,
        );

Map<String, dynamic> _$AgendaEmpleadosUncheckedCreateInputToJson(
    AgendaEmpleadosUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['idempleado'] = instance.idempleado;
  val['idUsuario'] = instance.idUsuario;
  val['fecha'] = instance.fecha;
  val['hora'] = instance.hora;
  return val;
}

AgendaEmpleadosUpdateInput _$AgendaEmpleadosUpdateInputFromJson(
        Map<String, dynamic> json) =>
    AgendaEmpleadosUpdateInput(
      idempleado: json['idempleado'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['idempleado'] as Map<String, dynamic>),
      idUsuario: json['idUsuario'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['idUsuario'] as Map<String, dynamic>),
      fecha: json['fecha'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['fecha'] as Map<String, dynamic>),
      hora: json['hora'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['hora'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AgendaEmpleadosUpdateInputToJson(
    AgendaEmpleadosUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempleado', instance.idempleado?.toJson());
  writeNotNull('idUsuario', instance.idUsuario?.toJson());
  writeNotNull('fecha', instance.fecha?.toJson());
  writeNotNull('hora', instance.hora?.toJson());
  return val;
}

AgendaEmpleadosUncheckedUpdateInput
    _$AgendaEmpleadosUncheckedUpdateInputFromJson(Map<String, dynamic> json) =>
        AgendaEmpleadosUncheckedUpdateInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          idempleado: json['idempleado'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idempleado'] as Map<String, dynamic>),
          idUsuario: json['idUsuario'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idUsuario'] as Map<String, dynamic>),
          fecha: json['fecha'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['fecha'] as Map<String, dynamic>),
          hora: json['hora'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['hora'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AgendaEmpleadosUncheckedUpdateInputToJson(
    AgendaEmpleadosUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('idempleado', instance.idempleado?.toJson());
  writeNotNull('idUsuario', instance.idUsuario?.toJson());
  writeNotNull('fecha', instance.fecha?.toJson());
  writeNotNull('hora', instance.hora?.toJson());
  return val;
}

AgendaEmpleadosCreateManyInput _$AgendaEmpleadosCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    AgendaEmpleadosCreateManyInput(
      id: json['id'] as int?,
      idempleado: json['idempleado'] as int,
      idUsuario: json['idUsuario'] as int,
      fecha: json['fecha'] as String,
      hora: json['hora'] as String,
    );

Map<String, dynamic> _$AgendaEmpleadosCreateManyInputToJson(
    AgendaEmpleadosCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['idempleado'] = instance.idempleado;
  val['idUsuario'] = instance.idUsuario;
  val['fecha'] = instance.fecha;
  val['hora'] = instance.hora;
  return val;
}

AgendaEmpleadosUpdateManyMutationInput
    _$AgendaEmpleadosUpdateManyMutationInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEmpleadosUpdateManyMutationInput(
          idempleado: json['idempleado'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idempleado'] as Map<String, dynamic>),
          idUsuario: json['idUsuario'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idUsuario'] as Map<String, dynamic>),
          fecha: json['fecha'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['fecha'] as Map<String, dynamic>),
          hora: json['hora'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['hora'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AgendaEmpleadosUpdateManyMutationInputToJson(
    AgendaEmpleadosUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempleado', instance.idempleado?.toJson());
  writeNotNull('idUsuario', instance.idUsuario?.toJson());
  writeNotNull('fecha', instance.fecha?.toJson());
  writeNotNull('hora', instance.hora?.toJson());
  return val;
}

AgendaEmpleadosUncheckedUpdateManyInput
    _$AgendaEmpleadosUncheckedUpdateManyInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEmpleadosUncheckedUpdateManyInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          idempleado: json['idempleado'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idempleado'] as Map<String, dynamic>),
          idUsuario: json['idUsuario'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idUsuario'] as Map<String, dynamic>),
          fecha: json['fecha'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['fecha'] as Map<String, dynamic>),
          hora: json['hora'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['hora'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AgendaEmpleadosUncheckedUpdateManyInputToJson(
    AgendaEmpleadosUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('idempleado', instance.idempleado?.toJson());
  writeNotNull('idUsuario', instance.idUsuario?.toJson());
  writeNotNull('fecha', instance.fecha?.toJson());
  writeNotNull('hora', instance.hora?.toJson());
  return val;
}

IntFilter _$IntFilterFromJson(Map<String, dynamic> json) => IntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntFilterToJson(IntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

UsuariosCountOrderByAggregateInput _$UsuariosCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UsuariosCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
      apellido: $enumDecodeNullable(_$SortOrderEnumMap, json['apellido']),
      cedula: $enumDecodeNullable(_$SortOrderEnumMap, json['cedula']),
      correo: $enumDecodeNullable(_$SortOrderEnumMap, json['correo']),
      contrasena: $enumDecodeNullable(_$SortOrderEnumMap, json['contrasena']),
      rol: $enumDecodeNullable(_$SortOrderEnumMap, json['rol']),
    );

Map<String, dynamic> _$UsuariosCountOrderByAggregateInputToJson(
    UsuariosCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('apellido', _$SortOrderEnumMap[instance.apellido]);
  writeNotNull('cedula', _$SortOrderEnumMap[instance.cedula]);
  writeNotNull('correo', _$SortOrderEnumMap[instance.correo]);
  writeNotNull('contrasena', _$SortOrderEnumMap[instance.contrasena]);
  writeNotNull('rol', _$SortOrderEnumMap[instance.rol]);
  return val;
}

UsuariosAvgOrderByAggregateInput _$UsuariosAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UsuariosAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
    );

Map<String, dynamic> _$UsuariosAvgOrderByAggregateInputToJson(
    UsuariosAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

UsuariosMaxOrderByAggregateInput _$UsuariosMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UsuariosMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
      apellido: $enumDecodeNullable(_$SortOrderEnumMap, json['apellido']),
      cedula: $enumDecodeNullable(_$SortOrderEnumMap, json['cedula']),
      correo: $enumDecodeNullable(_$SortOrderEnumMap, json['correo']),
      contrasena: $enumDecodeNullable(_$SortOrderEnumMap, json['contrasena']),
      rol: $enumDecodeNullable(_$SortOrderEnumMap, json['rol']),
    );

Map<String, dynamic> _$UsuariosMaxOrderByAggregateInputToJson(
    UsuariosMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('apellido', _$SortOrderEnumMap[instance.apellido]);
  writeNotNull('cedula', _$SortOrderEnumMap[instance.cedula]);
  writeNotNull('correo', _$SortOrderEnumMap[instance.correo]);
  writeNotNull('contrasena', _$SortOrderEnumMap[instance.contrasena]);
  writeNotNull('rol', _$SortOrderEnumMap[instance.rol]);
  return val;
}

UsuariosMinOrderByAggregateInput _$UsuariosMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UsuariosMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
      apellido: $enumDecodeNullable(_$SortOrderEnumMap, json['apellido']),
      cedula: $enumDecodeNullable(_$SortOrderEnumMap, json['cedula']),
      correo: $enumDecodeNullable(_$SortOrderEnumMap, json['correo']),
      contrasena: $enumDecodeNullable(_$SortOrderEnumMap, json['contrasena']),
      rol: $enumDecodeNullable(_$SortOrderEnumMap, json['rol']),
    );

Map<String, dynamic> _$UsuariosMinOrderByAggregateInputToJson(
    UsuariosMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('apellido', _$SortOrderEnumMap[instance.apellido]);
  writeNotNull('cedula', _$SortOrderEnumMap[instance.cedula]);
  writeNotNull('correo', _$SortOrderEnumMap[instance.correo]);
  writeNotNull('contrasena', _$SortOrderEnumMap[instance.contrasena]);
  writeNotNull('rol', _$SortOrderEnumMap[instance.rol]);
  return val;
}

UsuariosSumOrderByAggregateInput _$UsuariosSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UsuariosSumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
    );

Map<String, dynamic> _$UsuariosSumOrderByAggregateInputToJson(
    UsuariosSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

IntWithAggregatesFilter _$IntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    IntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntWithAggregatesFilterToJson(
    IntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
    StringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

EstablecimientosCountOrderByAggregateInput
    _$EstablecimientosCountOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        EstablecimientosCountOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          direccion: $enumDecodeNullable(_$SortOrderEnumMap, json['direccion']),
          ciudad: $enumDecodeNullable(_$SortOrderEnumMap, json['ciudad']),
          imagen: $enumDecodeNullable(_$SortOrderEnumMap, json['imagen']),
          horario: $enumDecodeNullable(_$SortOrderEnumMap, json['horario']),
        );

Map<String, dynamic> _$EstablecimientosCountOrderByAggregateInputToJson(
    EstablecimientosCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('direccion', _$SortOrderEnumMap[instance.direccion]);
  writeNotNull('ciudad', _$SortOrderEnumMap[instance.ciudad]);
  writeNotNull('imagen', _$SortOrderEnumMap[instance.imagen]);
  writeNotNull('horario', _$SortOrderEnumMap[instance.horario]);
  return val;
}

EstablecimientosAvgOrderByAggregateInput
    _$EstablecimientosAvgOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        EstablecimientosAvgOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
        );

Map<String, dynamic> _$EstablecimientosAvgOrderByAggregateInputToJson(
    EstablecimientosAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

EstablecimientosMaxOrderByAggregateInput
    _$EstablecimientosMaxOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        EstablecimientosMaxOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          direccion: $enumDecodeNullable(_$SortOrderEnumMap, json['direccion']),
          ciudad: $enumDecodeNullable(_$SortOrderEnumMap, json['ciudad']),
          imagen: $enumDecodeNullable(_$SortOrderEnumMap, json['imagen']),
          horario: $enumDecodeNullable(_$SortOrderEnumMap, json['horario']),
        );

Map<String, dynamic> _$EstablecimientosMaxOrderByAggregateInputToJson(
    EstablecimientosMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('direccion', _$SortOrderEnumMap[instance.direccion]);
  writeNotNull('ciudad', _$SortOrderEnumMap[instance.ciudad]);
  writeNotNull('imagen', _$SortOrderEnumMap[instance.imagen]);
  writeNotNull('horario', _$SortOrderEnumMap[instance.horario]);
  return val;
}

EstablecimientosMinOrderByAggregateInput
    _$EstablecimientosMinOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        EstablecimientosMinOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          direccion: $enumDecodeNullable(_$SortOrderEnumMap, json['direccion']),
          ciudad: $enumDecodeNullable(_$SortOrderEnumMap, json['ciudad']),
          imagen: $enumDecodeNullable(_$SortOrderEnumMap, json['imagen']),
          horario: $enumDecodeNullable(_$SortOrderEnumMap, json['horario']),
        );

Map<String, dynamic> _$EstablecimientosMinOrderByAggregateInputToJson(
    EstablecimientosMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('direccion', _$SortOrderEnumMap[instance.direccion]);
  writeNotNull('ciudad', _$SortOrderEnumMap[instance.ciudad]);
  writeNotNull('imagen', _$SortOrderEnumMap[instance.imagen]);
  writeNotNull('horario', _$SortOrderEnumMap[instance.horario]);
  return val;
}

EstablecimientosSumOrderByAggregateInput
    _$EstablecimientosSumOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        EstablecimientosSumOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
        );

Map<String, dynamic> _$EstablecimientosSumOrderByAggregateInputToJson(
    EstablecimientosSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

EspecialistasCountOrderByAggregateInput
    _$EspecialistasCountOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        EspecialistasCountOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          apellido: $enumDecodeNullable(_$SortOrderEnumMap, json['apellido']),
          telefono: $enumDecodeNullable(_$SortOrderEnumMap, json['telefono']),
          imagen: $enumDecodeNullable(_$SortOrderEnumMap, json['imagen']),
          horario: $enumDecodeNullable(_$SortOrderEnumMap, json['horario']),
        );

Map<String, dynamic> _$EspecialistasCountOrderByAggregateInputToJson(
    EspecialistasCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('apellido', _$SortOrderEnumMap[instance.apellido]);
  writeNotNull('telefono', _$SortOrderEnumMap[instance.telefono]);
  writeNotNull('imagen', _$SortOrderEnumMap[instance.imagen]);
  writeNotNull('horario', _$SortOrderEnumMap[instance.horario]);
  return val;
}

EspecialistasAvgOrderByAggregateInput
    _$EspecialistasAvgOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        EspecialistasAvgOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
        );

Map<String, dynamic> _$EspecialistasAvgOrderByAggregateInputToJson(
    EspecialistasAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

EspecialistasMaxOrderByAggregateInput
    _$EspecialistasMaxOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        EspecialistasMaxOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          apellido: $enumDecodeNullable(_$SortOrderEnumMap, json['apellido']),
          telefono: $enumDecodeNullable(_$SortOrderEnumMap, json['telefono']),
          imagen: $enumDecodeNullable(_$SortOrderEnumMap, json['imagen']),
          horario: $enumDecodeNullable(_$SortOrderEnumMap, json['horario']),
        );

Map<String, dynamic> _$EspecialistasMaxOrderByAggregateInputToJson(
    EspecialistasMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('apellido', _$SortOrderEnumMap[instance.apellido]);
  writeNotNull('telefono', _$SortOrderEnumMap[instance.telefono]);
  writeNotNull('imagen', _$SortOrderEnumMap[instance.imagen]);
  writeNotNull('horario', _$SortOrderEnumMap[instance.horario]);
  return val;
}

EspecialistasMinOrderByAggregateInput
    _$EspecialistasMinOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        EspecialistasMinOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          apellido: $enumDecodeNullable(_$SortOrderEnumMap, json['apellido']),
          telefono: $enumDecodeNullable(_$SortOrderEnumMap, json['telefono']),
          imagen: $enumDecodeNullable(_$SortOrderEnumMap, json['imagen']),
          horario: $enumDecodeNullable(_$SortOrderEnumMap, json['horario']),
        );

Map<String, dynamic> _$EspecialistasMinOrderByAggregateInputToJson(
    EspecialistasMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('apellido', _$SortOrderEnumMap[instance.apellido]);
  writeNotNull('telefono', _$SortOrderEnumMap[instance.telefono]);
  writeNotNull('imagen', _$SortOrderEnumMap[instance.imagen]);
  writeNotNull('horario', _$SortOrderEnumMap[instance.horario]);
  return val;
}

EspecialistasSumOrderByAggregateInput
    _$EspecialistasSumOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        EspecialistasSumOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
        );

Map<String, dynamic> _$EspecialistasSumOrderByAggregateInputToJson(
    EspecialistasSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

EmpleadosCountOrderByAggregateInput
    _$EmpleadosCountOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        EmpleadosCountOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idEstablecimiento: $enumDecodeNullable(
              _$SortOrderEnumMap, json['idEstablecimiento']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          apellido: $enumDecodeNullable(_$SortOrderEnumMap, json['apellido']),
          imagen: $enumDecodeNullable(_$SortOrderEnumMap, json['imagen']),
          horario: $enumDecodeNullable(_$SortOrderEnumMap, json['horario']),
        );

Map<String, dynamic> _$EmpleadosCountOrderByAggregateInputToJson(
    EmpleadosCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull(
      'idEstablecimiento', _$SortOrderEnumMap[instance.idEstablecimiento]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('apellido', _$SortOrderEnumMap[instance.apellido]);
  writeNotNull('imagen', _$SortOrderEnumMap[instance.imagen]);
  writeNotNull('horario', _$SortOrderEnumMap[instance.horario]);
  return val;
}

EmpleadosAvgOrderByAggregateInput _$EmpleadosAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    EmpleadosAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      idEstablecimiento:
          $enumDecodeNullable(_$SortOrderEnumMap, json['idEstablecimiento']),
    );

Map<String, dynamic> _$EmpleadosAvgOrderByAggregateInputToJson(
    EmpleadosAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull(
      'idEstablecimiento', _$SortOrderEnumMap[instance.idEstablecimiento]);
  return val;
}

EmpleadosMaxOrderByAggregateInput _$EmpleadosMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    EmpleadosMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      idEstablecimiento:
          $enumDecodeNullable(_$SortOrderEnumMap, json['idEstablecimiento']),
      nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
      apellido: $enumDecodeNullable(_$SortOrderEnumMap, json['apellido']),
      imagen: $enumDecodeNullable(_$SortOrderEnumMap, json['imagen']),
      horario: $enumDecodeNullable(_$SortOrderEnumMap, json['horario']),
    );

Map<String, dynamic> _$EmpleadosMaxOrderByAggregateInputToJson(
    EmpleadosMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull(
      'idEstablecimiento', _$SortOrderEnumMap[instance.idEstablecimiento]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('apellido', _$SortOrderEnumMap[instance.apellido]);
  writeNotNull('imagen', _$SortOrderEnumMap[instance.imagen]);
  writeNotNull('horario', _$SortOrderEnumMap[instance.horario]);
  return val;
}

EmpleadosMinOrderByAggregateInput _$EmpleadosMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    EmpleadosMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      idEstablecimiento:
          $enumDecodeNullable(_$SortOrderEnumMap, json['idEstablecimiento']),
      nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
      apellido: $enumDecodeNullable(_$SortOrderEnumMap, json['apellido']),
      imagen: $enumDecodeNullable(_$SortOrderEnumMap, json['imagen']),
      horario: $enumDecodeNullable(_$SortOrderEnumMap, json['horario']),
    );

Map<String, dynamic> _$EmpleadosMinOrderByAggregateInputToJson(
    EmpleadosMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull(
      'idEstablecimiento', _$SortOrderEnumMap[instance.idEstablecimiento]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('apellido', _$SortOrderEnumMap[instance.apellido]);
  writeNotNull('imagen', _$SortOrderEnumMap[instance.imagen]);
  writeNotNull('horario', _$SortOrderEnumMap[instance.horario]);
  return val;
}

EmpleadosSumOrderByAggregateInput _$EmpleadosSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    EmpleadosSumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      idEstablecimiento:
          $enumDecodeNullable(_$SortOrderEnumMap, json['idEstablecimiento']),
    );

Map<String, dynamic> _$EmpleadosSumOrderByAggregateInputToJson(
    EmpleadosSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull(
      'idEstablecimiento', _$SortOrderEnumMap[instance.idEstablecimiento]);
  return val;
}

AgendaEspecialistaCountOrderByAggregateInput
    _$AgendaEspecialistaCountOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEspecialistaCountOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idEspecialista:
              $enumDecodeNullable(_$SortOrderEnumMap, json['idEspecialista']),
          idUsuario: $enumDecodeNullable(_$SortOrderEnumMap, json['idUsuario']),
          fecha: $enumDecodeNullable(_$SortOrderEnumMap, json['fecha']),
          hora: $enumDecodeNullable(_$SortOrderEnumMap, json['hora']),
          lugar: $enumDecodeNullable(_$SortOrderEnumMap, json['lugar']),
        );

Map<String, dynamic> _$AgendaEspecialistaCountOrderByAggregateInputToJson(
    AgendaEspecialistaCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('idEspecialista', _$SortOrderEnumMap[instance.idEspecialista]);
  writeNotNull('idUsuario', _$SortOrderEnumMap[instance.idUsuario]);
  writeNotNull('fecha', _$SortOrderEnumMap[instance.fecha]);
  writeNotNull('hora', _$SortOrderEnumMap[instance.hora]);
  writeNotNull('lugar', _$SortOrderEnumMap[instance.lugar]);
  return val;
}

AgendaEspecialistaAvgOrderByAggregateInput
    _$AgendaEspecialistaAvgOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEspecialistaAvgOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idEspecialista:
              $enumDecodeNullable(_$SortOrderEnumMap, json['idEspecialista']),
          idUsuario: $enumDecodeNullable(_$SortOrderEnumMap, json['idUsuario']),
        );

Map<String, dynamic> _$AgendaEspecialistaAvgOrderByAggregateInputToJson(
    AgendaEspecialistaAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('idEspecialista', _$SortOrderEnumMap[instance.idEspecialista]);
  writeNotNull('idUsuario', _$SortOrderEnumMap[instance.idUsuario]);
  return val;
}

AgendaEspecialistaMaxOrderByAggregateInput
    _$AgendaEspecialistaMaxOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEspecialistaMaxOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idEspecialista:
              $enumDecodeNullable(_$SortOrderEnumMap, json['idEspecialista']),
          idUsuario: $enumDecodeNullable(_$SortOrderEnumMap, json['idUsuario']),
          fecha: $enumDecodeNullable(_$SortOrderEnumMap, json['fecha']),
          hora: $enumDecodeNullable(_$SortOrderEnumMap, json['hora']),
          lugar: $enumDecodeNullable(_$SortOrderEnumMap, json['lugar']),
        );

Map<String, dynamic> _$AgendaEspecialistaMaxOrderByAggregateInputToJson(
    AgendaEspecialistaMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('idEspecialista', _$SortOrderEnumMap[instance.idEspecialista]);
  writeNotNull('idUsuario', _$SortOrderEnumMap[instance.idUsuario]);
  writeNotNull('fecha', _$SortOrderEnumMap[instance.fecha]);
  writeNotNull('hora', _$SortOrderEnumMap[instance.hora]);
  writeNotNull('lugar', _$SortOrderEnumMap[instance.lugar]);
  return val;
}

AgendaEspecialistaMinOrderByAggregateInput
    _$AgendaEspecialistaMinOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEspecialistaMinOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idEspecialista:
              $enumDecodeNullable(_$SortOrderEnumMap, json['idEspecialista']),
          idUsuario: $enumDecodeNullable(_$SortOrderEnumMap, json['idUsuario']),
          fecha: $enumDecodeNullable(_$SortOrderEnumMap, json['fecha']),
          hora: $enumDecodeNullable(_$SortOrderEnumMap, json['hora']),
          lugar: $enumDecodeNullable(_$SortOrderEnumMap, json['lugar']),
        );

Map<String, dynamic> _$AgendaEspecialistaMinOrderByAggregateInputToJson(
    AgendaEspecialistaMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('idEspecialista', _$SortOrderEnumMap[instance.idEspecialista]);
  writeNotNull('idUsuario', _$SortOrderEnumMap[instance.idUsuario]);
  writeNotNull('fecha', _$SortOrderEnumMap[instance.fecha]);
  writeNotNull('hora', _$SortOrderEnumMap[instance.hora]);
  writeNotNull('lugar', _$SortOrderEnumMap[instance.lugar]);
  return val;
}

AgendaEspecialistaSumOrderByAggregateInput
    _$AgendaEspecialistaSumOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEspecialistaSumOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idEspecialista:
              $enumDecodeNullable(_$SortOrderEnumMap, json['idEspecialista']),
          idUsuario: $enumDecodeNullable(_$SortOrderEnumMap, json['idUsuario']),
        );

Map<String, dynamic> _$AgendaEspecialistaSumOrderByAggregateInputToJson(
    AgendaEspecialistaSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('idEspecialista', _$SortOrderEnumMap[instance.idEspecialista]);
  writeNotNull('idUsuario', _$SortOrderEnumMap[instance.idUsuario]);
  return val;
}

AgendaEmpleadosCountOrderByAggregateInput
    _$AgendaEmpleadosCountOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEmpleadosCountOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idempleado:
              $enumDecodeNullable(_$SortOrderEnumMap, json['idempleado']),
          idUsuario: $enumDecodeNullable(_$SortOrderEnumMap, json['idUsuario']),
          fecha: $enumDecodeNullable(_$SortOrderEnumMap, json['fecha']),
          hora: $enumDecodeNullable(_$SortOrderEnumMap, json['hora']),
        );

Map<String, dynamic> _$AgendaEmpleadosCountOrderByAggregateInputToJson(
    AgendaEmpleadosCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('idempleado', _$SortOrderEnumMap[instance.idempleado]);
  writeNotNull('idUsuario', _$SortOrderEnumMap[instance.idUsuario]);
  writeNotNull('fecha', _$SortOrderEnumMap[instance.fecha]);
  writeNotNull('hora', _$SortOrderEnumMap[instance.hora]);
  return val;
}

AgendaEmpleadosAvgOrderByAggregateInput
    _$AgendaEmpleadosAvgOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEmpleadosAvgOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idempleado:
              $enumDecodeNullable(_$SortOrderEnumMap, json['idempleado']),
          idUsuario: $enumDecodeNullable(_$SortOrderEnumMap, json['idUsuario']),
        );

Map<String, dynamic> _$AgendaEmpleadosAvgOrderByAggregateInputToJson(
    AgendaEmpleadosAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('idempleado', _$SortOrderEnumMap[instance.idempleado]);
  writeNotNull('idUsuario', _$SortOrderEnumMap[instance.idUsuario]);
  return val;
}

AgendaEmpleadosMaxOrderByAggregateInput
    _$AgendaEmpleadosMaxOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEmpleadosMaxOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idempleado:
              $enumDecodeNullable(_$SortOrderEnumMap, json['idempleado']),
          idUsuario: $enumDecodeNullable(_$SortOrderEnumMap, json['idUsuario']),
          fecha: $enumDecodeNullable(_$SortOrderEnumMap, json['fecha']),
          hora: $enumDecodeNullable(_$SortOrderEnumMap, json['hora']),
        );

Map<String, dynamic> _$AgendaEmpleadosMaxOrderByAggregateInputToJson(
    AgendaEmpleadosMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('idempleado', _$SortOrderEnumMap[instance.idempleado]);
  writeNotNull('idUsuario', _$SortOrderEnumMap[instance.idUsuario]);
  writeNotNull('fecha', _$SortOrderEnumMap[instance.fecha]);
  writeNotNull('hora', _$SortOrderEnumMap[instance.hora]);
  return val;
}

AgendaEmpleadosMinOrderByAggregateInput
    _$AgendaEmpleadosMinOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEmpleadosMinOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idempleado:
              $enumDecodeNullable(_$SortOrderEnumMap, json['idempleado']),
          idUsuario: $enumDecodeNullable(_$SortOrderEnumMap, json['idUsuario']),
          fecha: $enumDecodeNullable(_$SortOrderEnumMap, json['fecha']),
          hora: $enumDecodeNullable(_$SortOrderEnumMap, json['hora']),
        );

Map<String, dynamic> _$AgendaEmpleadosMinOrderByAggregateInputToJson(
    AgendaEmpleadosMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('idempleado', _$SortOrderEnumMap[instance.idempleado]);
  writeNotNull('idUsuario', _$SortOrderEnumMap[instance.idUsuario]);
  writeNotNull('fecha', _$SortOrderEnumMap[instance.fecha]);
  writeNotNull('hora', _$SortOrderEnumMap[instance.hora]);
  return val;
}

AgendaEmpleadosSumOrderByAggregateInput
    _$AgendaEmpleadosSumOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AgendaEmpleadosSumOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          idempleado:
              $enumDecodeNullable(_$SortOrderEnumMap, json['idempleado']),
          idUsuario: $enumDecodeNullable(_$SortOrderEnumMap, json['idUsuario']),
        );

Map<String, dynamic> _$AgendaEmpleadosSumOrderByAggregateInputToJson(
    AgendaEmpleadosSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('idempleado', _$SortOrderEnumMap[instance.idempleado]);
  writeNotNull('idUsuario', _$SortOrderEnumMap[instance.idUsuario]);
  return val;
}

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
    StringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

IntFieldUpdateOperationsInput _$IntFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    IntFieldUpdateOperationsInput(
      set: json['set'] as int?,
      increment: json['increment'] as int?,
      decrement: json['decrement'] as int?,
      multiply: json['multiply'] as int?,
      divide: json['divide'] as int?,
    );

Map<String, dynamic> _$IntFieldUpdateOperationsInputToJson(
    IntFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  writeNotNull('increment', instance.increment);
  writeNotNull('decrement', instance.decrement);
  writeNotNull('multiply', instance.multiply);
  writeNotNull('divide', instance.divide);
  return val;
}

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedIntWithAggregatesFilter _$NestedIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntWithAggregatesFilterToJson(
    NestedIntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedFloatFilter _$NestedFloatFilterFromJson(Map<String, dynamic> json) =>
    NestedFloatFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatFilterToJson(NestedFloatFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
    NestedStringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

Usuarios _$UsuariosFromJson(Map<String, dynamic> json) => Usuarios(
      id: json['id'] as int,
      nombre: json['nombre'] as String,
      apellido: json['apellido'] as String,
      cedula: json['cedula'] as String,
      correo: json['correo'] as String,
      contrasena: json['contrasena'] as String,
      rol: json['rol'] as String,
    );

Map<String, dynamic> _$UsuariosToJson(Usuarios instance) => <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'apellido': instance.apellido,
      'cedula': instance.cedula,
      'correo': instance.correo,
      'contrasena': instance.contrasena,
      'rol': instance.rol,
    };

Establecimientos _$EstablecimientosFromJson(Map<String, dynamic> json) =>
    Establecimientos(
      id: json['id'] as int,
      nombre: json['nombre'] as String,
      direccion: json['direccion'] as String,
      ciudad: json['ciudad'] as String,
      imagen: json['imagen'] as String,
      horario: json['horario'] as String,
    );

Map<String, dynamic> _$EstablecimientosToJson(Establecimientos instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'direccion': instance.direccion,
      'ciudad': instance.ciudad,
      'imagen': instance.imagen,
      'horario': instance.horario,
    };

Especialistas _$EspecialistasFromJson(Map<String, dynamic> json) =>
    Especialistas(
      id: json['id'] as int,
      nombre: json['nombre'] as String,
      apellido: json['apellido'] as String,
      telefono: json['telefono'] as String,
      imagen: json['imagen'] as String,
      horario: json['horario'] as String,
    );

Map<String, dynamic> _$EspecialistasToJson(Especialistas instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'apellido': instance.apellido,
      'telefono': instance.telefono,
      'imagen': instance.imagen,
      'horario': instance.horario,
    };

Empleados _$EmpleadosFromJson(Map<String, dynamic> json) => Empleados(
      id: json['id'] as int,
      idEstablecimiento: json['idEstablecimiento'] as int,
      nombre: json['nombre'] as String,
      apellido: json['apellido'] as String,
      imagen: json['imagen'] as String,
      horario: json['horario'] as String,
    );

Map<String, dynamic> _$EmpleadosToJson(Empleados instance) => <String, dynamic>{
      'id': instance.id,
      'idEstablecimiento': instance.idEstablecimiento,
      'nombre': instance.nombre,
      'apellido': instance.apellido,
      'imagen': instance.imagen,
      'horario': instance.horario,
    };

AgendaEspecialista _$AgendaEspecialistaFromJson(Map<String, dynamic> json) =>
    AgendaEspecialista(
      id: json['id'] as int,
      idEspecialista: json['idEspecialista'] as int,
      idUsuario: json['idUsuario'] as int,
      fecha: json['fecha'] as String,
      hora: json['hora'] as String,
      lugar: json['lugar'] as String,
    );

Map<String, dynamic> _$AgendaEspecialistaToJson(AgendaEspecialista instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idEspecialista': instance.idEspecialista,
      'idUsuario': instance.idUsuario,
      'fecha': instance.fecha,
      'hora': instance.hora,
      'lugar': instance.lugar,
    };

AgendaEmpleados _$AgendaEmpleadosFromJson(Map<String, dynamic> json) =>
    AgendaEmpleados(
      id: json['id'] as int,
      idempleado: json['idempleado'] as int,
      idUsuario: json['idUsuario'] as int,
      fecha: json['fecha'] as String,
      hora: json['hora'] as String,
    );

Map<String, dynamic> _$AgendaEmpleadosToJson(AgendaEmpleados instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idempleado': instance.idempleado,
      'idUsuario': instance.idUsuario,
      'fecha': instance.fecha,
      'hora': instance.hora,
    };

UsuariosGroupByOutputType _$UsuariosGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UsuariosGroupByOutputType(
      id: json['id'] as int?,
      nombre: json['nombre'] as String?,
      apellido: json['apellido'] as String?,
      cedula: json['cedula'] as String?,
      correo: json['correo'] as String?,
      contrasena: json['contrasena'] as String?,
      rol: json['rol'] as String?,
    );

Map<String, dynamic> _$UsuariosGroupByOutputTypeToJson(
    UsuariosGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('nombre', instance.nombre);
  writeNotNull('apellido', instance.apellido);
  writeNotNull('cedula', instance.cedula);
  writeNotNull('correo', instance.correo);
  writeNotNull('contrasena', instance.contrasena);
  writeNotNull('rol', instance.rol);
  return val;
}

EstablecimientosGroupByOutputType _$EstablecimientosGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    EstablecimientosGroupByOutputType(
      id: json['id'] as int?,
      nombre: json['nombre'] as String?,
      direccion: json['direccion'] as String?,
      ciudad: json['ciudad'] as String?,
      imagen: json['imagen'] as String?,
      horario: json['horario'] as String?,
    );

Map<String, dynamic> _$EstablecimientosGroupByOutputTypeToJson(
    EstablecimientosGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('nombre', instance.nombre);
  writeNotNull('direccion', instance.direccion);
  writeNotNull('ciudad', instance.ciudad);
  writeNotNull('imagen', instance.imagen);
  writeNotNull('horario', instance.horario);
  return val;
}

EspecialistasGroupByOutputType _$EspecialistasGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    EspecialistasGroupByOutputType(
      id: json['id'] as int?,
      nombre: json['nombre'] as String?,
      apellido: json['apellido'] as String?,
      telefono: json['telefono'] as String?,
      imagen: json['imagen'] as String?,
      horario: json['horario'] as String?,
    );

Map<String, dynamic> _$EspecialistasGroupByOutputTypeToJson(
    EspecialistasGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('nombre', instance.nombre);
  writeNotNull('apellido', instance.apellido);
  writeNotNull('telefono', instance.telefono);
  writeNotNull('imagen', instance.imagen);
  writeNotNull('horario', instance.horario);
  return val;
}

EmpleadosGroupByOutputType _$EmpleadosGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    EmpleadosGroupByOutputType(
      id: json['id'] as int?,
      idEstablecimiento: json['idEstablecimiento'] as int?,
      nombre: json['nombre'] as String?,
      apellido: json['apellido'] as String?,
      imagen: json['imagen'] as String?,
      horario: json['horario'] as String?,
    );

Map<String, dynamic> _$EmpleadosGroupByOutputTypeToJson(
    EmpleadosGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('idEstablecimiento', instance.idEstablecimiento);
  writeNotNull('nombre', instance.nombre);
  writeNotNull('apellido', instance.apellido);
  writeNotNull('imagen', instance.imagen);
  writeNotNull('horario', instance.horario);
  return val;
}

AgendaEspecialistaGroupByOutputType
    _$AgendaEspecialistaGroupByOutputTypeFromJson(Map<String, dynamic> json) =>
        AgendaEspecialistaGroupByOutputType(
          id: json['id'] as int?,
          idEspecialista: json['idEspecialista'] as int?,
          idUsuario: json['idUsuario'] as int?,
          fecha: json['fecha'] as String?,
          hora: json['hora'] as String?,
          lugar: json['lugar'] as String?,
        );

Map<String, dynamic> _$AgendaEspecialistaGroupByOutputTypeToJson(
    AgendaEspecialistaGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('idEspecialista', instance.idEspecialista);
  writeNotNull('idUsuario', instance.idUsuario);
  writeNotNull('fecha', instance.fecha);
  writeNotNull('hora', instance.hora);
  writeNotNull('lugar', instance.lugar);
  return val;
}

AgendaEmpleadosGroupByOutputType _$AgendaEmpleadosGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AgendaEmpleadosGroupByOutputType(
      id: json['id'] as int?,
      idempleado: json['idempleado'] as int?,
      idUsuario: json['idUsuario'] as int?,
      fecha: json['fecha'] as String?,
      hora: json['hora'] as String?,
    );

Map<String, dynamic> _$AgendaEmpleadosGroupByOutputTypeToJson(
    AgendaEmpleadosGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('idempleado', instance.idempleado);
  writeNotNull('idUsuario', instance.idUsuario);
  writeNotNull('fecha', instance.fecha);
  writeNotNull('hora', instance.hora);
  return val;
}

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('db', instance.db);
  return val;
}
