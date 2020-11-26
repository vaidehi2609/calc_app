import 'package:calc_app/features/calc/presentation/bloc/calc_app_bloc.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key key,
    @required CalcAppBloc bloc,
  }) : _bloc = bloc, super(key: key);

  final CalcAppBloc _bloc;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex :3,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                     elevation: 0,
                    color: Colors.grey,
                    child: Text(
                      'AC',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    onPressed:(){
                      _bloc.add(ClearCalculation());
                    } ,)
                  ),
                  SizedBox(width:2),
                Expanded(
                  flex: 1,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                     elevation: 0,
                    color: Colors.white,
                    child: Text(
                      '/',
                      style: TextStyle(fontSize: 30, color: Colors.teal[200]),
                    ),
                    onPressed:(){
                      _bloc.add(OperatorPressed(operators: Operators.divide));
                    } ,)
      
                  ),
              ],
            ),
            
          ),
          SizedBox(height: 2,),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex:1,
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.black12,
                    child: Text(
                      '7',
                      style: TextStyle(fontSize: 30, color: Colors.blue[200]),
                    ),
                    onPressed: (){
                      _bloc.add(NumberPressed(number: 7));
                    },

                  ),
                ),
                Expanded(
                  flex:1,
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.black12,
                    child: Text(
                      '8',
                      style: TextStyle(fontSize: 30, color: Colors.blue[200]),
                    ),
                    onPressed: (){
                      _bloc.add(NumberPressed(number: 8));
                    },

                  ),
                ),
                Expanded(
                  flex:1,
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.black12,
                    child: Text(
                      '9',
                      style: TextStyle(fontSize: 30, color: Colors.blue[200]),
                    ),
                    onPressed: (){
                      _bloc.add(NumberPressed(number: 9));
                    },

                  ),
                ),
                Expanded(
                  flex:1,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 0,
                    color: Colors.white,
                    child: Text(
                      'x',
                      style: TextStyle(fontSize: 30, color: Colors.teal[200]),
                    ),
                    onPressed: (){
                      _bloc.add(OperatorPressed(operators: Operators.multiply));
                    },

                  ),
                ),
                
              ],
            ),
          ),
          SizedBox(height: 2,),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex:1,
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.black12,
                    child: Text(
                      '4',
                      style: TextStyle(fontSize: 30, color: Colors.blue[200]),
                    ),
                    onPressed: (){
                      _bloc.add(NumberPressed(number: 4));
                    },

                  ),
                ),
                Expanded(
                  flex:1,
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.black12,
                    child: Text(
                      '5',
                      style: TextStyle(fontSize: 30, color: Colors.blue[200]),
                    ),
                    onPressed: (){
                      _bloc.add(NumberPressed(number: 5));
                    },

                  ),
                ),
                Expanded(
                  flex:1,
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.black12,
                    child: Text(
                      '6',
                      style: TextStyle(fontSize: 30, color: Colors.blue[200]),
                    ),
                    onPressed: (){
                      _bloc.add(NumberPressed(number: 6));
                    },

                  ),
                ),
                Expanded(
                  flex:1,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 0,
                    color: Colors.white,
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 40, color: Colors.teal[200]),
                    ),
                    onPressed: (){
                      _bloc.add(OperatorPressed(operators: Operators.minus));
                    },

                  ),
                ),
                
                    ],
                  ),
                ),
                SizedBox(height: 2,),
                Expanded(
                  flex:1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                  flex:1,
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.black12,
                    child: Text(
                      '1',
                      style: TextStyle(fontSize: 30, color: Colors.blue[200]),
                    ),
                    onPressed: (){
                      _bloc.add(NumberPressed(number: 1));
                    },

                  ),
                ),
                    Expanded(
                  flex:1,
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.black12,
                    child: Text(
                      '2',
                      style: TextStyle(fontSize: 30, color: Colors.blue[200]),
                    ),
                    onPressed: (){
                      _bloc.add(NumberPressed(number: 2));
                    },

                  ),
                ),Expanded(
                  flex:1,
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.black12,
                    child: Text(
                      '3',
                      style: TextStyle(fontSize: 30, color: Colors.blue[200]),
                    ),
                    onPressed: (){
                      _bloc.add(NumberPressed(number: 3));
                    },

                  ),
                ),Expanded(
                  flex:1,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 0,
                    color: Colors.white,
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 30, color: Colors.teal[200]),
                    ),
                    onPressed: (){
                      _bloc.add(OperatorPressed(operators: Operators.add));
                    },

                  ),
                ),
                    ]
              )
          
        ),
        SizedBox(height: 2,),
        Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                  flex:1,
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.black12,
                    child: Text(
                      '0',
                      style: TextStyle(fontSize: 30, color: Colors.blue[200]),
                    ),
                    onPressed: (){
                      _bloc.add(NumberPressed(number: 0));
                    },

                  ),
                ),
                  Expanded(
                  flex:1,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 0,
                    color: Colors.orangeAccent,
                    child: Text(
                      '=',
                      style: TextStyle(fontSize: 35, color: Colors.grey[200]),
                    ),
                    onPressed: (){
                      _bloc.add(CalculateResult());
                    },

                
                ),
                ),
                
                ],
              ),
        ),



              ],
            ),
            
            );
  }
}