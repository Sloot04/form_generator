part of 'card_bloc.dart';

@immutable
abstract class CardState {
  final List<Course> courses;

  const CardState({required this.courses});
}

class CardInitialState extends CardState {
  const CardInitialState() : super(courses: const []);
}

class CardSetState extends CardState {
  final List<Course>  newCourse;
    const CardSetState({required this.newCourse}) : super(courses:newCourse );
}
