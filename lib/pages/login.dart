import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: SizedBox(
                height: 300.0,
                width: 300,
                child: Center(
                  child: Text(
                    'Trabajo',
                    style: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            _userTextField(),
            SizedBox(
              height: 15,
            ),
            _passwordTextField(),
            SizedBox(
              height: 15,
            ),
            _bottonLogin()
          ],
        ),
      ),
    );
  }
}

Widget _userTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.email),
          hintText: 'ejemplo@correo.cl',
          labelText: 'Correo electronico',
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget _passwordTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.lock),
          hintText: 'Contraseña',
          labelText: 'Contrañesa',
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget _bottonLogin() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        child: Text(
          'Iniciar Sesion',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10.0,
      color: Theme.of(context).primaryColor,
      onPressed: () {
        Navigator.pushNamed(context, 'inicio');
      },
    );
  });
}
