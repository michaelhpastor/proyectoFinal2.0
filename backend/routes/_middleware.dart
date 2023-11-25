import 'package:appweb/agendaEmpleado_reposirtory.dart';
import 'package:appweb/agendaEspecialista_repository.dart';
import 'package:appweb/especialista_repository.dart';
import 'package:appweb/establecimiento_repository.dart';
import 'package:appweb/src/generated/prisma/prisma_client.dart';
import 'package:appweb/user_repository.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart' as shelf;

Handler middleware(Handler handler) {
  
  return handler.use(requestLogger()).use(_provideRepoUsuario()).use(_provideRepoEstablecimientos()).use(_provideRepoEspecialistas()).use(_provideRepoEmpleados()).use(_provideRepoAgendaEspecialistas()).use(_provideRepoAgendaEmpelados())
  .use(
    fromShelfMiddleware(
      shelf.corsHeaders(
        headers: {
          shelf.ACCESS_CONTROL_ALLOW_ORIGIN: '*',
          shelf.ACCESS_CONTROL_ALLOW_METHODS: 'GET, POST'
        }
      )
    )
  );
}

final _prisma = PrismaClient(
    datasources: Datasources(
      db: "mysql://michael:Mieshepa0128@mysqlserver56.mysql.database.azure.com/barberweb?schema=public"
    )
  );


Middleware _provideRepoUsuario(){
  return provider((context) => repositorioUsuario(_prisma));
}

Middleware _provideRepoEstablecimientos(){
  return provider((context) => repositorioEstablecimiento(_prisma));
}
Middleware _provideRepoEspecialistas(){
  return provider((context) => repositorioESpecialista(_prisma));
}
Middleware _provideRepoEmpleados(){
  return provider((context) => repositorioAgendaEmpleado(_prisma));
}
Middleware _provideRepoAgendaEspecialistas(){
  return provider((context) => repositorioAgendaEspecilista(_prisma));
}
Middleware _provideRepoAgendaEmpelados(){
  return provider((context) => repositorioAgendaEmpleado(_prisma));
}