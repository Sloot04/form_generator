import 'package:flutter/material.dart';

class FormGenerator extends StatelessWidget {
  const FormGenerator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          color: Colors.red,
          onPressed: () {},
          child: const Text("Generar Formulario"),
        )
      ],
    );
  }
}
