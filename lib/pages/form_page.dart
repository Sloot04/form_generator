import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_generator/Widgets/text_form_custom.dart';
import 'package:form_generator/bloc/card_bloc.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController lastname = TextEditingController();
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
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              )),
              Container(
                height: 2,
                width: double.infinity,
                color: Colors.blue,
              ),
              const SizedBox(height: 10),
              Center(
                  child: Text(state.courses.single.date,
                      style: const TextStyle(fontSize: 18))),
              state.courses.last.description!.isEmpty
                  ? const SizedBox(
                      height: 20,
                    )
                  : Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(state.courses.last.description!),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      state.courses.last.form!.name
                          ? Column(
                              children: [
                                TextFormCustom(
                                    controller: name, labelText: 'Nombre'),
                                const SizedBox(height: 10)
                              ],
                            )
                          : const SizedBox(
                              width: 10,
                            ),
                      state.courses.last.form!.lastName 
                          ? Column(
                              children: [
                                TextFormCustom(
                                    controller: lastname,
                                    labelText: 'Apellido'),
                                const SizedBox(height: 10)
                              ],
                            )
                          : const SizedBox(
                              width: 10,
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
