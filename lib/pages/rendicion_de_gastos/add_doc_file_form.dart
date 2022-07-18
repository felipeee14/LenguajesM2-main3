import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/text_button.dart';

class AddDocFileForm extends StatefulWidget {
  const AddDocFileForm({Key? key}) : super(key: key);

  @override
  State<AddDocFileForm> createState() => _AddDocFileFormState();
}

int _selectedIndex = 2;

class _AddDocFileFormState extends State<AddDocFileForm> {
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
              const Text_Button(navigation: '', text: 'Documento o Foto'),
              const SizedBox(height: 30),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Descripcion',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Metodo de Pago',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Monto',
                ),
              ),
              const SizedBox(height: 30),
              RaisedButton(
                disabledColor: Colors.blue,
                child:
                    const Text('Subir', style: TextStyle(color: Colors.white)),
                splashColor: Colors.blue,
                color: Colors.blue,
                onPressed: () {},
              ),
            ],
          ),
        ),
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
