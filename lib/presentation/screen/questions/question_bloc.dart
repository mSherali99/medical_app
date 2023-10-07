import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/presentation/screen/short_questions/short_questions_screen.dart';

part 'question_event.dart';

part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  int _questionIndex = 0;

  List<List<Color>> _variantsList = [
    [
      Color(0xFF9C850D),
      Color(0xFFA09A04),
      Color(0xFFD09B14),
      Color(0xFFB2AE49),
      Color(0xFFDED500)
    ],
    [
      Color(0xFF38331A),
      Color(0xFFA09004),
      Color(0xFFD09B14),
      Color(0xFFB2AE49),
      Color(0xFFDED500)
    ],
    [
      Color(0xFF9C850D),
      Color(0xFFA09A04),
      Color(0xFFD09B14),
      Color(0xFF4998B2),
      Color(0xFF00DED0)
    ]
  ];

  QuestionBloc() : super(const QuestionState()) {
    on<QuestionEvent>((event, emit) async {
      switch (event) {
        case SelectVariant():
          await onSelectVariant(event, emit);
          break;
        case OpenGalleryScreen():
          break;
        case Load():
          emit(state.copyState(_variantsList[_questionIndex++], "$_questionIndex"));
      }
    });
  }

  Future<void> onSelectVariant(
      SelectVariant event, Emitter<QuestionState> emit) async {
    if(_questionIndex < 3){
      //todo event.selectedColor;
      emit(state.copyState(_variantsList[_questionIndex++], "$_questionIndex"));
    }
    else{
      Navigator.pushReplacement(event.context,CupertinoPageRoute(builder: (context)
      {return const ShortQuestionsScreen();}));
    }
  }
}
