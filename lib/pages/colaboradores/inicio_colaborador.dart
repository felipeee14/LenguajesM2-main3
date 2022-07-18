import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets.dart';

class InicioColaborador extends StatelessWidget {
  const InicioColaborador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '¡Bienvenido Juan!',
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: ListBody(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://bionutrition.com.co/wp-content/uploads/2020/10/avatar-hombre-redondo.png',
                  width: 90,
                  height: 120,
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Hoy es viernes 20 de mayo',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                const Text_Button(
                  navigation: 'info-colaborador',
                  text: 'Mi Perfil',
                ),
              ],
            ),
            const Titulo_Informacion_Colaborador(
              titulo: 'Noticias',
              info: '',
              redireccion: '',
            ),
            const MensajePerfilColaborador(
                mensaje: 'La semana del 14 de abril no se trabaja!'),
            const Titulo_Informacion_Colaborador(
              titulo: 'Horario',
              info: 'ver mas ...',
              redireccion: 'horario',
            ),
            const MensajePerfilColaborador(
                mensaje: 'Aqui va horario e informacion'),
            const Titulo_Informacion_Colaborador(
              titulo: 'Mi Asistencia',
              info: 'Marcar Asistencia ...',
              redireccion: 'asistencia',
            ),
          ],
        ),
      ),
    );
  }
}
