part of 'calc_app_bloc.dart';
enum Operators{add,minus,multiply,divide}
abstract class CalcAppEvent extends Equatable {
  const CalcAppEvent();

  @override
  List<Object> get props => [];
}

class NumberPressed extends CalcAppEvent {
  final int number;
  const NumberPressed({@required this.number}) : assert(number != null);
  @override
  List<Object> get props => [number];
}

class OperatorPressed extends CalcAppEvent {
  
  final Operators operators;
  const OperatorPressed({@required this.operators}) : assert(operators != null);
  @override
  List<Object> get props => [operators];
}

class CalculateResult extends CalcAppEvent {
  @override
  List<Object> get props =>  [];
}

class ClearCalculation extends CalcAppEvent {
  @override
  List<Object> get props =>  [];
}