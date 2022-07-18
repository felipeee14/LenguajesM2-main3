import 'package:flutter/material.dart';

class AddCam extends StatefulWidget {
  const AddCam({Key? key}) : super(key: key);

  @override
  State<AddCam> createState() => _AddCamState();
}

bool _isAddOn = false;
int _selectedIndex = 2;

class _AddCamState extends State<AddCam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Agregar',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 200),
              RawMaterialButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text(
                            'Elige las opciones para agregar una imagen'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              GestureDetector(
                                  child: const Text("Galeria"),
                                  onTap: () => Navigator.pushNamed(
                                      context, 'agregardocumentoformulario')),
                              const Padding(padding: EdgeInsets.all(8.0)),
                              GestureDetector(
                                  child: const Text("Camara"),
                                  onTap: () => Navigator.pushNamed(
                                      context, 'agregardocumentoformulario'))
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
                  Icons.add_a_photo,
                  color: Colors.black,
                  size: 84,
                ),
                padding: const EdgeInsets.all(30.0),
                shape: const CircleBorder(),
              ),
              const Text(
                'Camara',
                style: TextStyle(fontSize: 20, fontFamily: 'Monserrat'),
              ),
              const SizedBox(height: 167),
            ],
          ),
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
