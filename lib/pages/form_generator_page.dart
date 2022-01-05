import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_generator/Widgets/text_form_custom.dart';
import 'package:form_generator/bloc/card_bloc.dart';
import 'package:form_generator/models/course_model.dart';
import 'package:form_generator/models/dataform_model.dart';

class FormGeneratorPage extends StatefulWidget {
  const FormGeneratorPage({Key? key}) : super(key: key);

  @override
  State<FormGeneratorPage> createState() => _FormGeneratorPageState();
}

class _FormGeneratorPageState extends State<FormGeneratorPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameCtr = TextEditingController();
  TextEditingController dateCtr = TextEditingController();
  TextEditingController descriptionCtr = TextEditingController();
  bool isCheckedName = true;
  bool isCheckedLastname = true;

  @override
  void dispose() {
    nameCtr.dispose();
    dateCtr.dispose();
    descriptionCtr.dispose();
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
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormCustom(
                        controller: nameCtr, labelText: 'Nombre del evento'),
                    const SizedBox(height: 10),
                    TextFormCustom(
                      controller: dateCtr,
                      labelText: 'Fecha del evento',
                      icon: Icons.date_range,
                    ),
                    const SizedBox(height: 10),
                    TextFormCustom(
                      controller: descriptionCtr,
                      labelText: 'Descripción',
                      line: 8,
                      icon: Icons.description,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Campos del formulario',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: [
                          CheckboxListTile(
                              title: const Text('Nombre'),
                              tileColor: Colors.blue.shade100,
                              value: isCheckedName,
                              onChanged: (value) {
                                setState(() {
                                  isCheckedName = value!;
                                });
                              }),
                          const SizedBox(height: 10),
                          CheckboxListTile(
                              title: const Text('Apellido'),
                              tileColor: Colors.blue.shade100,
                              value: isCheckedLastname,
                              onChanged: (value) {
                                setState(() {
                                  isCheckedLastname = value!;
                                });
                              }),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
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
            BlocProvider.of<CardBloc>(context, listen: false)
                .add(AddCourseEvent(Course(
                    name: nameCtr.text,
                    date: dateCtr.text,
                    description: descriptionCtr.text,
                    inscriptions: [],
                    form: DataForm(
                      name: isCheckedName,
                      lastName: isCheckedLastname,
                    ))));
            _formKey.currentState!.reset();
            Navigator.pushNamed(context, '/form');
          }),
    );
  }
}
