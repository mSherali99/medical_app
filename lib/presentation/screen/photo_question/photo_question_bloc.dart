// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:medical_app/presentation/screen/photo_question/photo_data.dart';
import 'package:medical_app/presentation/screen/results/results_screen.dart';

part 'photo_question_event.dart';

part 'photo_question_state.dart';

class PhotoQuestionBloc extends Bloc<PhotoQuestionEvent, PhotoQuestionState> {
  PhotoQuestionBloc() : super(const PhotoQuestionState()) {
    on<PhotoQuestionEvent>((event, emit) {
      switch (event) {
        case Load():
          loadData(event, emit);
          break;
        case SelectPhoto():

          onEventSelect(event, emit);
          break;
        case SelectAnswer():
          onEventSelectAnswer(event, emit);
          break;
      }
    });
  }

  void loadData(Load event, Emitter<PhotoQuestionState> emit) {
    final photoList = <PhotoData>[
      FromAsset(url: "assets/images/img_1.png"),
      FromAsset(url: "assets/images/img_1.png"),
      FromAsset(url: "assets/images/img_1.png"),
      FromAsset(url: "assets/images/img_1.png"),
      FromAsset(url: "assets/images/img_1.png"),
    ];
    emit(state.copyWith(photoList: photoList));
  }

  void onEventSelect(SelectPhoto event, Emitter<PhotoQuestionState> emit) {
    final photoList = <PhotoData>[];
    photoList.addAll(state.photoList);
    photoList.add(event.photo);
    emit(state.copyWith(photoList: photoList, userPhoto: event.photo));
  }

  void onEventSelectAnswer(
      SelectAnswer event, Emitter<PhotoQuestionState> emit) {
    Navigator.pushReplacement(event.context, CupertinoPageRoute(
      builder: (context) {
        return const ResultsScreen();
      },
    ));
  }
}
