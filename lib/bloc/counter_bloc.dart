import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      final currentStatevalue = state.count;
      final incrementvalue = currentStatevalue + 1;

      return emit(CounterState(count: incrementvalue));
    });

    on<Decrement>((event, emit) {
      final currentStatevalue = state.count;
      final decrementvalue = currentStatevalue - 1;

      return emit(CounterState(count: decrementvalue));
    });
  }
}
