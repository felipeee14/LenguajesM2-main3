import 'package:flutter/material.dart';

class MensajePerfilColaborador extends StatelessWidget {
  const MensajePerfilColaborador({
    Key? key,
    required this.mensaje,
  }) : super(key: key);
  final String mensaje;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      padding: const EdgeInsets.all(40.0),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color.fromARGB(255, 119, 181, 232)),
      child: Text(mensaje, style: const TextStyle(fontSize: 20)),
    );
  }
}
