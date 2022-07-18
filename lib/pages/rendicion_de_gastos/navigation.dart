import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/rendicion_de_gastos/add_docs.dart';

import 'package:flutter_application_1/pages/rendicion_de_gastos/chart.dart';

import 'package:flutter_application_1/pages/rendicion_de_gastos/list.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  int _currentIndex = 0;

  final List<Widget> tabs = [
    const Grafico(),
    const Lists(),
    const AddDoc(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 25),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'RENDICIÓN DE GASTOS',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 20,
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
      backgroundColor: Theme.of(context).accentColor,
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black.withOpacity(0.5),
        backgroundColor: Theme.of(context).primaryColor,
        iconSize: 35,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: 'Grafico'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined), label: 'Lista'),
          BottomNavigationBarItem(
              icon: Icon(Icons.note_add_outlined), label: 'Agregar'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
