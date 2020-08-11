import 'package:flutter_bloc/flutter_bloc.dart';

enum CounterEvent { INCREASE, DECREASE }

class SampleFlutterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.INCREASE:
        yield state + 1;
        break;
      case CounterEvent.DECREASE:
        yield state - 1;
        break;
    }
  }
}
