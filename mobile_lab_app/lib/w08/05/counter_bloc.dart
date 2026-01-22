import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_lab_app/w08/05/counter_event.dart';
import 'package:mobile_lab_app/w08/05/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc() : super(CounterState(0)) {
    on<IncrementEvent>((event, emit) {
      emit(CounterState(state.counter + 1));
    });
    on<DecrementEvent>((event, emit) {
      emit(CounterState(state.counter - 1));
    });
    on<MultipleEvent>((event, emit) {
      emit(CounterState(state.counter * 2));
    });
  }
}