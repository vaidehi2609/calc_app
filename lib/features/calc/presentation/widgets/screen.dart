import 'package:calc_app/features/calc/presentation/bloc/calc_app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Screen extends StatelessWidget {
  const Screen({
    Key key,
    @required CalcAppBloc bloc,
  }) : _bloc = bloc, super(key: key);

  final CalcAppBloc _bloc;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(16),
        child: Stack(
          alignment: Alignment.centerRight,
          children: <Widget>[
            BlocBuilder<CalcAppBloc,CalcAppState>(
              cubit: _bloc,
              builder: (context,state){
                if(state is Add){
                return Text(
                  state.expression,
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.red[300],
                    ),
                    maxLines: 1,
                );}else if (state is CalculationResult){
                  return Text(
                    state.result,
                    style: TextStyle(
                      fontSize: 60,
                    color: Colors.blue,
                    ),
                    maxLines: 1,
                  );
                }else {
                  return  Text(
                    "0",
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.grey[600],
                    ),
                    maxLines: 1,
                  );
                }
              })
          ],
          ),
      ),
      
      );
  }
}