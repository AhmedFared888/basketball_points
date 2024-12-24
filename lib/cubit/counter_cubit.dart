import 'package:basketball_points/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoint = 0;

  int teamBPoint = 0;

  void teamAIncrement(int buttonNumber) {
    teamAPoint += buttonNumber;
    emit(CounterAIncrementState());
  }

  void teamBIncrement(int buttonNumber) {
    teamBPoint += buttonNumber;
    emit(CounterBIncrementState());
  }
}
