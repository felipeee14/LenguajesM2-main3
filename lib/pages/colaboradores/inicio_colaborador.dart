import 'package:flutter_application_1/pages/colaboradores/page_detailview.dart';
import 'package:flutter_application_1/pages/colaboradores/inicio_colaborador.dart';
import 'package:flutter_application_1/providers/ejemplos_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InicioColaborador extends StatelessWidget {
  const InicioColaborador({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final listado = Provider.of<EjemplosProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lista de colaboradores"),
        ),
        body: ListView.separated(
          itemCount: listado.ListadoHabilidadDisplay
              .length, //tripulacion.length,//establece el tamaño
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.people_rounded),
            title: Text(listado.ListadoHabilidadDisplay[index]
                .colaborador), //Text(tripulacion[index]),

            trailing: const Icon(Icons.arrow_forward_ios_outlined),

            onTap: () {
              Navigator.pushNamed(context, 'detalle',
                  arguments: listado.ListadoHabilidadDisplay[index]);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
