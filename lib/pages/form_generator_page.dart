import 'package:flutter/material.dart';

class FormGeneratorPage extends StatelessWidget {
  const FormGeneratorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generar evento'),
      ),
      body: const Center(
        child: Text('Generator'),
      ),
    );
  }
}
