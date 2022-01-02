import 'package:flutter/material.dart';
import 'package:form_generator/pages/form_generator_page.dart';
import 'package:form_generator/pages/form_page.dart';
import 'package:form_generator/pages/main_page.dart';
 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Generador de formularios',
      initialRoute: '/',
      routes: {
        '/': (_)=> const MainPage(),
        '/form_generator': (_)=> const FormGeneratorPage(),
        '/form': (_)=> const FormPage(),
      },
    );
  }
}