import 'package:calc_app/features/calc/presentation/bloc/calc_app_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

class MockCalcAppBloc extends Mock 
  implements CalcAppBloc{}

void main(){
  CalcAppBloc bloc;
  
  setUp((){
    
    bloc = CalcAppBloc(
      CalcAppInitial()
    );
  });
  test(
    'initial state should be correct',(){
      //assert
      expect(bloc.initialState,CalcAppInitial());

    });
    group(
      
      'NumberPressed',(){
       String one='1';
        blocTest<CalcAppBloc,CalcAppState>('emits number', 
        build: ()=> CalcAppBloc(CalcAppInitial()),
        act:(bloc) async=>bloc.add(NumberPressed(number: 1)) ,
        expect: [Add(expression: one)]
        );
      }
    );
    group(
      
      'OperatorPressed',(){
       String add = '+';
        blocTest<CalcAppBloc,CalcAppState>('emits null cause lastnum is false', 
        build: ()=> CalcAppBloc(CalcAppInitial()),
        act:(bloc) async=>bloc.add(OperatorPressed(operators: Operators.add)) ,
        expect: []
        );
      }
    );

    group(
      
      'ClearCalculation',(){
      
        blocTest<CalcAppBloc,CalcAppState>('emits initial state', 
        build: ()=> CalcAppBloc(CalcAppInitial()),
        act:(bloc) async=>bloc.add(ClearCalculation()) ,
        expect: [CalcAppInitial()]
        );
      }
    );
    group(
      
      'CalculateResult',(){
      String result;
        blocTest<CalcAppBloc,CalcAppState>('emits result', 
        build: ()=> CalcAppBloc(CalcAppInitial()),
        act:(bloc) async=>bloc.add(CalculateResult()) ,
        expect: []
        );
      }
    );


    
}