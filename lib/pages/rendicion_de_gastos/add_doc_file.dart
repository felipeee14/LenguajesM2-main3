import 'package:flutter/material.dart';

class AddDocFile extends StatefulWidget {
  const AddDocFile({Key? key}) : super(key: key);

  @override
  State<AddDocFile> createState() => _AddDocFileState();
}

bool _isAddOn = false;
int _selectedIndex = 2;

class _AddDocFileState extends State<AddDocFile> {
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
          child: Column(children: [
            const SizedBox(height: 150),
            RawMaterialButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Agregar documentos'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            GestureDetector(
                              child: const Text("Subir Documento (pdf)"),
                              onTap: () => Navigator.pushNamed(
                                  context, 'agregardocumentoformulario'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              elevation: 2.0,
              fillColor: const Color.fromARGB(255, 228, 223, 223),
              child: const Icon(
                Icons.note_add,
                color: Colors.black,
                size: 84,
              ),
              padding: const EdgeInsets.all(30.0),
              shape: const CircleBorder(),
              focusColor: Colors.blue,
            ),
            const SizedBox(height: 10),
            const Text(
              'Agregar Documentos',
              style: TextStyle(fontSize: 20, fontFamily: 'Monserrat'),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        selectedIconTheme: const IconThemeData(color: Colors.black, size: 40),
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
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
