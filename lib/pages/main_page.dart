import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_generator/Widgets/card.dart';
import 'package:form_generator/bloc/card_bloc.dart';

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
        actions: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/form_generator');
            },
            icon: const Icon(Icons.add_outlined),
            label: const Text('Agregar evento'),
          )
        ],
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
                  onTap: () => Navigator.pushNamed(context, '/detail'),
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
    );
  }
}
