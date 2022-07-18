import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/pages.dart';
import 'package:flutter_application_1/pages/rendicion_de_gastos/navigation.dart';

class AppRoutes {
  static const initalRoute = 'Login';

  static Map<String, Widget Function(BuildContext)> routes = {
    //Inicio
    'Login': (BuildContext context) => const Login(),
    'inicio': (BuildContext context) => const Inicio(),
    //Colaborador
    'inicio-colaborador': (BuildContext context) => const InicioColaborador(),
    'info-colaborador': (BuildContext context) =>
        const InformacionColaborador(),
    'asistencia': (BuildContext context) => const Asistencia(),
    'horario': (BuildContext context) => Horario(),
    //Rendicion de Gastos
    'navigation': (BuildContext context) => const Navigation(),
    'agregar-formulario': (BuildContext context) => const AgregarFormulario(),
    'agregar-documento': (BuildContext context) => const AgregarDocumentos(),
    'agregar': (BuildContext context) => const AddDoc(),
    'agregarcamara': (BuildContext context) => const AddCam(),
    'agregardocumento': (BuildContext context) => const AddDocFile(),
    'agregardocumentoformulario': (BuildContext context) =>
        const AddDocFileForm(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const PageError(),
    );
  }
}
