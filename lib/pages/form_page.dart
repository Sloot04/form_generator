import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_generator/bloc/card_bloc.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  @override
  void dispose() {
    name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Formulario')),
      body: BlocBuilder<CardBloc, CardState>(builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Center(
                  child: Text(
                state.courses.last.name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.blue,
              ),
              const SizedBox(height: 10),
              Center(
                  child: Text(state.courses.single.date,
                      style: const TextStyle(fontSize: 18))),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      state.courses.last.form!.name
                          ? TextFormField(
                              controller: name,
                              decoration:
                                  const InputDecoration(labelText: 'Nombre'),
                            )
                          : const SizedBox(
                              height: 10,
                            ),
                    ],
                  )),
            ],
          ),
        );
      }),
    );
  }
}
