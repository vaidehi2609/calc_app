part of 'calc_app_bloc.dart';

abstract class CalcAppState extends Equatable {
  
  const CalcAppState(
  );
  
  @override
  List<Object> get props => [];
}

class CalcAppInitial extends CalcAppState{}


class DisplayExpression extends CalcAppState{
  final String expression;

  DisplayExpression({this.expression});
  @override
  List<Object> get props => [expression];
}

class CalculationResult extends CalcAppState {
  final String result;
  const CalculationResult({@required this.result})
      : assert(result != null);
        
  @override
  List<Object> get props => [result];
}