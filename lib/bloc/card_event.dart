part of 'card_bloc.dart';

@immutable
abstract class CardEvent {}

class AddCourseEvent extends CardEvent {
  final Course course;
  AddCourseEvent(this.course);
}
