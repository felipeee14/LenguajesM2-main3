import 'package:flutter/material.dart';

import 'package:flutter_application_1/models/ejemplos_habilidad_list_response.dart';

class PageDetailView extends StatelessWidget {
  const PageDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Listado data = ModalRoute.of(context)?.settings.arguments as Listado;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Perfil del colaborador"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          children: [
            Card(
              child: Column(children: [
                Image.network(
                  'https://bionutrition.com.co/wp-content/uploads/2020/10/avatar-hombre-redondo.png',
                  height: 150,
                ),
                const ListTile(
                  title: Text(
                    'Datos personales',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                ListTile(
                  title: Text('Nombre: ' + data.colaborador,
                      style: const TextStyle(fontSize: 20)),
                ),
                ListTile(
                  title: Text('Rut: ' + data.rut.toString(),
                      style: const TextStyle(fontSize: 20)),
                ),
                ListTile(
                  title: Text('Genero: ' + data.genero.toString(),
                      style: const TextStyle(fontSize: 20)),
                ),
                ListTile(
                  title: Text('Dirección: ' + data.direccin.toString(),
                      style: const TextStyle(fontSize: 20)),
                ),
                const ListTile(
                  title: Text(
                    'Datos Empleado',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                ListTile(
                  title: Text('Correo: ' + data.correo.toString(),
                      style: const TextStyle(fontSize: 20)),
                ),
                ListTile(
                  title: Text('Celular: ' + data.celular.toString(),
                      style: const TextStyle(fontSize: 20)),
                ),
                ListTile(
                  title: Text('Estado: ' + data.estado.toString(),
                      style: const TextStyle(fontSize: 20)),
                ),
              ]),
            )
          ],
        ));
  }
}
