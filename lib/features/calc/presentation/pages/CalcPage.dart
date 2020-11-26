import 'package:calc_app/features/calc/presentation/bloc/calc_app_bloc.dart';
import 'package:calc_app/features/calc/presentation/widgets/buttons.dart';
import 'package:calc_app/features/calc/presentation/widgets/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalcPage extends StatefulWidget {
  @override
  _CalcPageState createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  CalcAppBloc _bloc;
 
  @override
  void initState() { 
    _bloc = CalcAppBloc(CalcAppInitial());
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //screen
            Screen(bloc: _bloc),
            //buttons
            Button(bloc: _bloc),
          ],
        ),
        ),
      
    );
  }
}



