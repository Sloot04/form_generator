import 'package:form_generator/models/inscription_model.dart';

class Course {
  final String name;
  final String date;
  final List<Inscription> inscriptions;

  Course({
    required this.name,
    required this.date,
    required this.inscriptions,
  });

  Course copyWith(
      {String? name, String? date, List<Inscription>? inscriptions}) {
    return Course(
        name: name ?? this.name,
        date: date ?? this.date,
        inscriptions: inscriptions ?? this.inscriptions);
  }
}
