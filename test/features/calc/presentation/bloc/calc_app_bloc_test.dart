import 'package:calc_app/features/calc/presentation/bloc/calc_app_bloc.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

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
    group('Calculations', () {
      String a = '1';
      String b = '2';
      String result = '3';
      test('when all clear is pressed result should return to initil state', (){
        //arrange
        
      });
    }

  );
}