import 'package:flutter/material.dart';

import 'package:flutter_application_1/routes/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Inicio',
      initialRoute: AppRoutes.initalRoute,
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
