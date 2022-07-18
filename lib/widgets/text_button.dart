import 'package:flutter/material.dart';

// ignore: camel_case_types
class Text_Button extends StatelessWidget {
  const Text_Button({
    Key? key,
    required this.navigation,
    required this.text,
  }) : super(key: key);

  final String navigation;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: () {
        Navigator.pushNamed(context, navigation);
      },
    );
  }
}
