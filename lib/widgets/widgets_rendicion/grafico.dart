import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class GraficoWidget extends StatelessWidget {
  const GraficoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = [
      Expenses(1, 70),
      Expenses(2, 120),
      Expenses(3, 180),
      Expenses(4, 90),
      Expenses(5, 360),
      Expenses(7, 50),
      Expenses(8, 270),
      Expenses(9, 40),
      Expenses(10, 300),
      Expenses(11, 450),
      Expenses(12, 1000),
    ];

    List<charts.Series<Expenses, int>> series = [
      charts.Series<Expenses, int>(
          id: 'Lineal',
          domainFn: (v, i) => v.mes,
          measureFn: (v, i) => v.expense,
          data: data),
    ];

    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: 300.0,
          child: charts.LineChart(series),
        ),
      ),
    );
  }
}

class Expenses {
  final int mes;
  final double expense;
  Expenses(this.mes, this.expense);
}
