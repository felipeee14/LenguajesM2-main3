import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/text_button.dart';

class AgregarFormulario extends StatefulWidget {
  const AgregarFormulario({Key? key}) : super(key: key);

  @override
  State<AgregarFormulario> createState() => _AgregarFormularioState();
}

int _selectedIndex = 0;

class _AgregarFormularioState extends State<AgregarFormulario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Agregar',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text_Button(
                  navigation: 'agregardocumentoformularioz',
                  text: 'Documento o Foto'),
              const SizedBox(height: 30),
              const Text('Descripcion',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              const SizedBox(height: 20),
              Container(
                width: 400.0,
                padding: const EdgeInsets.all(40.0),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 197, 197, 197)),
              ),
              const SizedBox(height: 20),
              const Text('Metodo de pago',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              const SizedBox(height: 20),
              Container(
                width: 400.0,
                padding: const EdgeInsets.all(40.0),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 197, 197, 197)),
              ),
              const SizedBox(height: 20),
              const Text('Monto',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              const SizedBox(height: 20),
              Container(
                width: 400.0,
                padding: const EdgeInsets.all(40.0),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 197, 197, 197)),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
            label: 'Grafico',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Agregar',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }
}
