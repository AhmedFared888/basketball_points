abstract class CounterState {}

class CounterAIncrementState extends CounterState {}

class CounterBIncrementState extends CounterState {}

class CounterReset extends CounterState {
  CounterReset(int teamAPoint, int teamBPoint);
}
