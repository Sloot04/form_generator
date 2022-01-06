import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_generator/bloc/card_bloc.dart';
import 'package:form_generator/bloc/observer.dart';
import 'package:form_generator/pages/detail_form.dart';

import 'package:form_generator/pages/form_generator_page.dart';
import 'package:form_generator/pages/form_page.dart';
import 'package:form_generator/pages/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  BlocOverrides.runZoned(() => runApp(const MyApp()),
      blocObserver: StateObserver());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => CardBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Generador de formularios',
        initialRoute: '/',
        routes: {
          '/': (_) => const MainPage(),
          '/form_generator': (_) => const FormGeneratorPage(),
          '/form': (_) => const FormPage(),
          '/detail': (_) => const DetailCoursePage(),
        },
      ),
    );
  }
}
