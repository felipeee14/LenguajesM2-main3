import 'package:flutter/material.dart';

class Lists extends StatelessWidget {
  const Lists({Key? key}) : super(key: key);

  final nombre = const [
    'Super Mercado LIDER',
    'RESTAURANT',
    'BOTILLERIA ',
    'PANADERIA',
    'VERDULERIA',
    'TAG',
    'GASOLINERA',
    'TiENDA H&M',
    'FALABELLA',
    'GYM',
    'BAZAR',
    'McDonalds',
    'CLINICA',
    'APPLE',
    'PUB',
    'PAPA JOHN´S',
    'UBER',
    'BIP',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ...nombre
              .map(
                (e) => ListTile(
                  leading: const Icon(Icons.photo),
                  title: Text(
                    e,
                  ),
                  subtitle: Text(
                    '250.000',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: const Icon(Icons.monetization_on),
                  onTap: () {},
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
