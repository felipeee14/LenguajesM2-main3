import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets.dart';

class InformacionColaborador extends StatelessWidget {
  const InformacionColaborador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: ListBody(
          children: [
            Column(
              children: [
                Image.network(
                  'https://bionutrition.com.co/wp-content/uploads/2020/10/avatar-hombre-redondo.png',
                  height: 150,
                ),
                const Text(
                  'Juan Valdes',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: const [
                    Text(
                      'Datos Personales',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Informacion_Colaborador(
                        titulo: 'Genero', informacion: 'Hombre'),
                    Informacion_Colaborador(
                        titulo: 'Rut', informacion: '11.111.111-1'),
                    Informacion_Colaborador(
                        titulo: 'Direccion',
                        informacion: 'Av. Pedro de Valdivia #641'),
                    Informacion_Colaborador(
                        titulo: 'Ciudad', informacion: 'Santiago'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: const [
                    Text(
                      'Datos del Empleado',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Informacion_Colaborador(
                        titulo: 'Sueldo', informacion: '1.000 pesos'),
                    Informacion_Colaborador(
                        titulo: "Email:", informacion: "email@gmail.com"),
                    Informacion_Colaborador(
                        titulo: 'Telefono:', informacion: '+569 123123123'),
                    Informacion_Colaborador(
                        titulo: 'Movil Empresa:',
                        informacion: '+569 123123123'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: const [
                    Text(
                      'Permisos',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Informacion_Colaborador(
                        titulo: 'Categoria', informacion: 'Nivel 2'),
                    Informacion_Colaborador(
                        titulo: 'Informacion',
                        informacion:
                            'En este nivel puedes acceder a las siguientes cantidades de dinero...'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
