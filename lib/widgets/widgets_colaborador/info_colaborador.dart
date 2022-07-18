import 'package:flutter/material.dart';

// ignore: camel_case_types
class Informacion_Colaborador extends StatelessWidget {
  const Informacion_Colaborador({
    Key? key,
    required this.titulo,
    required this.informacion,
  }) : super(key: key);
  final String titulo;
  final String informacion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 1.0, bottom: 1.0),
          child: Text(titulo,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0)),
        ),
        Container(
          margin: const EdgeInsets.only(top: 1.0, bottom: 1.0),
          child: Text(informacion,
              style: const TextStyle(
                  color: Color.fromARGB(255, 75, 75, 75),
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0)),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class Titulo_Informacion_Colaborador extends StatelessWidget {
  const Titulo_Informacion_Colaborador({
    Key? key,
    required this.titulo,
    required this.info,
    required this.redireccion,
  }) : super(key: key);
  final String titulo;
  final String info;
  final String redireccion;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            titulo,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GestureDetector(
          child: Text(
            info,
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, redireccion);
          },
        ),
      ],
    );
  }
}
