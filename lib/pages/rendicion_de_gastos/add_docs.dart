import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';

class AddDoc extends StatefulWidget {
  const AddDoc({Key? key}) : super(key: key);

  @override
  State<AddDoc> createState() => _AddDocState();
}

final ImagePicker _picker = ImagePicker();
int _selectedIndex = 2;

class _AddDocState extends State<AddDoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //boton de agregar doc
              const SizedBox(
                height: 80,
              ),
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
                                onTap: _documentAdd,
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
              ),
              const Text(
                'Documentos',
                style: TextStyle(fontSize: 20, fontFamily: 'Monserrat'),
              ),

              //Boton de agregar por camara
              const SizedBox(height: 20),
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
                                onTap: _openGallery,
                              ),
                              const Padding(padding: EdgeInsets.all(8.0)),
                              GestureDetector(
                                  child: const Text("Camara"),
                                  onTap: _openCamera),
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
                  Icons.photo_camera,
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
            ],
          ),
        ),
      ),
    );
  }

  void _openCamera() async {
    XFile? picture = await _picker.pickImage(source: ImageSource.camera);
    if (picture != null) {
      Navigator.pushNamed(context, 'agregardocumentoformulario');
    }
  }

  void _openGallery() async {
    XFile? picture = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    if (picture != null) {
      Navigator.pushNamed(context, 'agregardocumentoformulario');
    }
  }

  void _documentAdd() async {
    FilePickerResult? file = await FilePicker.platform.pickFiles();
    if (file != null) {
      Navigator.pushNamed(context, 'agregardocumentoformulario');
    }
  }

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
        switch (index) {
          case 0:
            break;

          case 1:
            break;

          case 2:
            //Navigator.pushNamed(context, 'agregar');
            break;
        }
      },
    );
  }
}
