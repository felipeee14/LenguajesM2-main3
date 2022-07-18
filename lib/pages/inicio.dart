import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets.dart';

import 'colaboradores/inicio_colaborador.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 25),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'INICIO',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, size: 25),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 15.0,
            ),
            _bottonColab(),
            SizedBox(
              height: 15.0,
            ),
            _bottonRend(),
          ],
        ),
      ),
    );
  }
}

Widget _bottonColab() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
        child: Text(
          'Colaboradores',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10.0,
      color: Theme.of(context).primaryColor,
      onPressed: () {
        Navigator.pushNamed(context, 'inicio-colaborador');
      },
    );
  });
}

Widget _bottonRend() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 73.0, vertical: 20.0),
        child: Text(
          'Rendicion de Gastos',
          style: TextStyle(fontSize: 18.5, fontWeight: FontWeight.bold),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10.0,
      color: Theme.of(context).primaryColor,
      onPressed: () {
        Navigator.pushNamed(context, 'navigation');
      },
    );
  });
}
