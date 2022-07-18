import 'package:flutter/material.dart';

class Asistencia extends StatelessWidget {
  const Asistencia({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: const Text('Asistencia'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text('Día'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text('Miercoles'),
                  ),
                  FloatingActionButton(
                    heroTag: 'marcar-asistencia',
                    child: const Icon(Icons.check),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    onPressed: () {},
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text('Ubicacion'),
                  ),
                  FloatingActionButton(
                    heroTag: 'ubicacion',
                    child: const Icon(Icons.fmd_good_sharp),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    onPressed: () {},
                  ),
                  const Padding(padding: EdgeInsets.all(5))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Container(
              width: 300,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.blueGrey,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Grafico Mensual de Asistencia'),
                  ),
                  Image.network(
                    'https://toushitsu-off8.com/wp-content/uploads/2020/10/img_5f810a5638afa.png',
                    width: 280,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
