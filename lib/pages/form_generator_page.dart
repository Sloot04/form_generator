import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_generator/bloc/card_bloc.dart';
import 'package:form_generator/models/course_model.dart';

class FormGeneratorPage extends StatefulWidget {
  const FormGeneratorPage({Key? key}) : super(key: key);

  @override
  State<FormGeneratorPage> createState() => _FormGeneratorPageState();
}

class _FormGeneratorPageState extends State<FormGeneratorPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameCtr = TextEditingController();
  TextEditingController dateCtr = TextEditingController();

  @override
  void dispose() {
    nameCtr.dispose();
    dateCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generar evento'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameCtr,
                      decoration:
                          const InputDecoration(labelText: 'Nombre del evento'),
                    ),
                    TextFormField(
                      controller: dateCtr,
                      decoration:
                          const InputDecoration(labelText: 'Fecha del evento'),
                    )
                  ],
                )),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: 'Agregar Evento',
          child: const Icon(
            Icons.add,
            size: 40,
          ),
          onPressed: () {
            BlocProvider.of<CardBloc>(context, listen: false).add(
                AddCourseEvent(Course(
                    name: nameCtr.text, date: dateCtr.text, inscriptions: [])));
            _formKey.currentState!.reset();
            Navigator.pushNamed(context, '/');
          }),
    );
  }
}
