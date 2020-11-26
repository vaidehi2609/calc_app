import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:math_expressions/math_expressions.dart';
part 'calc_app_event.dart';
part 'calc_app_state.dart';

class CalcAppBloc extends Bloc<CalcAppEvent, CalcAppState> {
  
  CalcAppBloc(CalcAppState i) : super(CalcAppInitial());
  @override
  CalcAppState get initialState{
    return CalcAppInitial();
  }
  bool lastNum;
  var calculation='';
  var expression='';
  @override
  Stream<CalcAppState> mapEventToState(
    CalcAppEvent event,
  ) async* {
    if (event is NumberPressed){
      lastNum =true;
      calculation+='${event.number}';
      expression+='${event.number}';
      yield Add(expression: expression);
          }
    if (event is OperatorPressed){
      if(lastNum){
        lastNum=false;
        if(event.operators == Operators.add){
          calculation+='+';
          expression+='+';
        }else if(event.operators == Operators.minus){
          calculation+='-';
          expression+='-';
        }else if(event.operators == Operators.multiply){
          calculation+='*';
          expression+='*';
        }else if(event.operators == Operators.divide){
          calculation+='/';
          expression+='/';
        }else{
          calculation+='unknown operators';
          expression+='unknown operators';
        }
        }
        yield Add(expression: expression);
      }
    if (event is ClearCalculation){
      calculation='';
      expression='';
      yield CalcAppInitial();
          }     

    if (event is CalculateResult){
      Parser p = Parser();
      Expression exp = p.parse(calculation);
      ContextModel cm= ContextModel();
      var calculated = exp.evaluate(EvaluationType.REAL,cm).toString();
      var result = calculated;
      yield CalculationResult(result: result);
          }
      
     }
      }



