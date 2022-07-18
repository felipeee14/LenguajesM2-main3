import 'package:flutter/material.dart';

class AgregarDocumentos extends StatefulWidget {
  const AgregarDocumentos({Key? key}) : super(key: key);

  @override
  State<AgregarDocumentos> createState() => _AgregarDocumentosState();
}

bool _isAddOn = false;
int _selectedIndex = 0;

class _AgregarDocumentosState extends State<AgregarDocumentos> {
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
              const SizedBox(height: 150),
              const Icon(
                Icons.picture_as_pdf,
                size: 90,
              ),
              const SizedBox(height: 50),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  setState(
                    () {
                      _isAddOn = !_isAddOn;
                    },
                  );
                },
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
