import 'package:flutter/material.dart';
 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Generador de formularios',
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Cursos Arbolar'),
        ),
        body: const Center(
          child:  Text('Cursos Arbolar'),
        ),
      ),
    );
  }
}