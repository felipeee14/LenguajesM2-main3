import 'dart:convert';

class EjemplosHabilidadListResponse {
  EjemplosHabilidadListResponse({
    required this.listado,
  });

  List<Listado> listado;

  factory EjemplosHabilidadListResponse.fromJson(String str) =>
      EjemplosHabilidadListResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EjemplosHabilidadListResponse.fromMap(Map<String, dynamic> json) =>
      EjemplosHabilidadListResponse(
        listado:
            List<Listado>.from(json["Listado"].map((x) => Listado.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "Listado": List<dynamic>.from(listado.map((x) => x.toMap())),
      };
}

class Listado {
  Listado({
    required this.colaborador,
    required this.rut,
    required this.genero,
    required this.direccin,
    required this.cargo,
    required this.celular,
    required this.estado,
    required this.correo,
  });

  String colaborador;
  String rut;
  String genero;
  String direccin;
  String cargo;
  int celular;
  String estado;
  String correo;

  factory Listado.fromJson(String str) => Listado.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Listado.fromMap(Map<String, dynamic> json) => Listado(
        colaborador: json["colaborador"],
        rut: json["rut"],
        genero: json["genero"],
        direccin: json["direcciÃ³n"],
        cargo: json["cargo"],
        celular: json["celular"],
        estado: json["estado"],
        correo: json["correo"],
      );

  Map<String, dynamic> toMap() => {
        "colaborador": colaborador,
        "rut": rut,
        "genero": genero,
        "direcciÃ³n": direccin,
        "cargo": cargo,
        "celular": celular,
        "estado": estado,
        "correo": correo,
      };
}
