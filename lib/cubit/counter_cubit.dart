import 'package:basketball_points/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoint = 0;

  int teamBPoint = 0;

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoint += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoint += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  void resetPoints() {
    teamAPoint = 0;
    teamBPoint = 0;
    emit(CounterReset(teamAPoint, teamBPoint));
  }
}
