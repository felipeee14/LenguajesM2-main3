import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets_rendicion/grafico.dart';

class Grafico extends StatelessWidget {
  const Grafico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body());
  }

  Widget _body() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          _lista(),
          _grafico(),
        ],
      ),
    );
  }

  Widget _item(IconData icon, String name, double value) {
    return ListTile(
        title: Text(
          '\$$value',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(
          name,
          style: TextStyle(
            fontSize: 16,
            color: Colors.blueGrey,
          ),
        ),
        trailing: Icon(
          icon,
          size: 38,
        ));
  }

  Widget _lista() {
    return Expanded(
      child: ListView(
        children: <Widget>[
          _item(Icons.monetization_on_outlined, "Ingresos totales", 3.700002),
          _item(Icons.monetization_on_outlined, "Ingresos este mes", 1.110001),
          _item(Icons.credit_card_outlined, "Gastos totales", 3.700005),
          _item(Icons.credit_card_outlined, "Gastos este mes", 3.700002),
        ],
      ),
    );
  }

  Widget _grafico() {
    return Container(
      child: SizedBox(
        height: 300.0,
        child: GraficoWidget(),
      ),
    );
  }
}
