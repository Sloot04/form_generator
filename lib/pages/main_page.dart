import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_generator/Widgets/card.dart';
import 'package:form_generator/bloc/card_bloc.dart';
import 'package:form_generator/models/course_model.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int count;

    if (size.width <= 492) {
      count = 2;
    } else if (size.width <= 675) {
      count = 3;
    } else if (size.width <= 872) {
      count = 4;
    } else if (size.width <= 1109) {
      count = 5;
    } else if (size.width <= 1610) {
      count = 6;
    } else {
      count = 7;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cursos Arbolar'),
        centerTitle: true,
        elevation: 3,
      ),
      body: BlocBuilder<CardBloc, CardState>(
        builder: (context, state) {
          return GridView.count(
            padding: const EdgeInsets.all(20),
            crossAxisCount: count,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: [
              ...state.courses.map(
                (e) => InkWell(
                  onTap: () => Navigator.pushNamed(context, '/form'),
                  child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        FormCard(
                          name: e.name,
                          date: e.date,
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              e.inscriptions.length.toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blue.withOpacity(0.7)),
                        ),
                      ]),
                ),
              )
            ],
          );
        },
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
                    name: "Apicultura", date: "21-5-2022", inscriptions: [])));
          }),
    );
  }
}
