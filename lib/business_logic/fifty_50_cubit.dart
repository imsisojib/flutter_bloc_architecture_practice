import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_arch_practice/business_logic/fifty_50_state.dart';
import 'package:flutter_bloc_arch_practice/models/enums.dart';

class Fifty50Cubit extends Cubit<Fifty50State>{
  Fifty50Cubit() : super(Fifty50State(0000,false, Colors.white, Colors.white));

   selectedAnswer(String answer){

    int generatedNumber = generateRandomNumber() as int;
    if(generatedNumber%2 == 00 && answer==Answers.EVEN){
      emit( Fifty50State(generatedNumber,true,Colors.green,Colors.white));
    }else{
      emit( Fifty50State(generatedNumber,false,Colors.white,Colors.green));
    }




  }

  Future<int> generateRandomNumber() async {
    return await Random().nextInt(9999) + 1111;
  }


}