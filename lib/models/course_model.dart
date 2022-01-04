import 'package:form_generator/models/dataform_model.dart';
import 'package:form_generator/models/inscription_model.dart';

class Course {
  final String name;
  final String date;
  final List<Inscription> inscriptions;
  final String? description;
  final DataForm? form;

  Course(
      {required this.name,
      required this.date,
      required this.inscriptions,
      this.description,
      this.form});

  Course copyWith(
      {String? name,
      String? date,
      List<Inscription>? inscriptions,
      String? description}) {
    return Course(
        name: name ?? this.name,
        date: date ?? this.date,
        inscriptions: inscriptions ?? this.inscriptions,
        description: description ?? this.description);
  }
}
