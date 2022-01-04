import 'package:bloc/bloc.dart';
import 'package:form_generator/models/course_model.dart';
import 'package:meta/meta.dart';

part 'card_event.dart';
part 'card_state.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc() : super(const CardInitialState()) {
    on<AddCourseEvent>((event, emit) {
      emit(CardSetState(newCourse: [...state.courses, event.course]));
    });
  }

 /*  @override
  void onTransition(Transition<CardEvent, CardState> transition) {
    super.onTransition(transition);
    // ignore: avoid_print
    print(transition.currentState.courses.length);
  } */
}
