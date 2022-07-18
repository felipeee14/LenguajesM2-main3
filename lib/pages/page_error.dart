import 'package:flutter/material.dart';

class PageError extends StatelessWidget {
  const PageError({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
      ),
      body: const Center(
        child: Text("Error"),
      ),
    );
  }
}
