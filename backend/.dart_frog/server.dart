// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, implicit_dynamic_list_literal

import 'dart:io';

import 'package:dart_frog/dart_frog.dart';


import '../routes/index.dart' as index;
import '../routes/users/index.dart' as users_index;
import '../routes/establecimientos/index.dart' as establecimientos_index;
import '../routes/especialista/index.dart' as especialista_index;
import '../routes/empleado/index.dart' as empleado_index;
import '../routes/auth/index.dart' as auth_index;
import '../routes/agendaEspecialista/index.dart' as agenda_especialista_index;
import '../routes/agendaEmepleado/index.dart' as agenda_emepleado_index;

import '../routes/_middleware.dart' as middleware;

void main() async {
  final address = InternetAddress.anyIPv6;
  final port = int.tryParse(Platform.environment['PORT'] ?? '8080') ?? 8080;
  hotReload(() => createServer(address, port));
}

Future<HttpServer> createServer(InternetAddress address, int port) {
  final handler = Cascade().add(buildRootHandler()).handler;
  return serve(handler, address, port);
}

Handler buildRootHandler() {
  final pipeline = const Pipeline().addMiddleware(middleware.middleware);
  final router = Router()
    ..mount('/agendaEmepleado', (context) => buildAgendaEmepleadoHandler()(context))
    ..mount('/agendaEspecialista', (context) => buildAgendaEspecialistaHandler()(context))
    ..mount('/auth', (context) => buildAuthHandler()(context))
    ..mount('/empleado', (context) => buildEmpleadoHandler()(context))
    ..mount('/especialista', (context) => buildEspecialistaHandler()(context))
    ..mount('/establecimientos', (context) => buildEstablecimientosHandler()(context))
    ..mount('/users', (context) => buildUsersHandler()(context))
    ..mount('/', (context) => buildHandler()(context));
  return pipeline.addHandler(router);
}

Handler buildAgendaEmepleadoHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', (context) => agenda_emepleado_index.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildAgendaEspecialistaHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', (context) => agenda_especialista_index.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildAuthHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', (context) => auth_index.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildEmpleadoHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', (context) => empleado_index.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildEspecialistaHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', (context) => especialista_index.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildEstablecimientosHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', (context) => establecimientos_index.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildUsersHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', (context) => users_index.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', (context) => index.onRequest(context,));
  return pipeline.addHandler(router);
}

