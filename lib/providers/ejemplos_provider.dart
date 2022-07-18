import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/models/ejemplos_habilidad_list_response.dart';

class EjemplosProvider extends ChangeNotifier {
  String APIUSER = 'test';
  String APIPASS = 'test..2022';
  String BASEURL = '157.230.213.232:8000';
  // ignore: non_constant_identifier_names
  List<Listado> ListadoHabilidadDisplay = [];
  //Contructor
  EjemplosProvider() {
    colaborador_get_list();
  }
  //crearemos los métodos para consumir los endPoint

  // ignore: non_constant_identifier_names
  colaborador_get_list() async {
    var url = Uri.http(
      BASEURL,
      'colaboradores/colaborador_get_list/',
    );
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$APIUSER:$APIPASS'));
    final response = await http.get(url, headers: {'authorization': basicAuth});
    //creearemos un mapa
    final ejemploListadoHabilidadResponse =
        EjemplosHabilidadListResponse.fromJson(response.body);
    ListadoHabilidadDisplay = ejemploListadoHabilidadResponse.listado;
    notifyListeners(); //notifica a los widgets cuando hay un cambio en la data
  }
}
