part of 'photo_question_bloc.dart';

@immutable
class PhotoQuestionState {
  final List<PhotoData> photoList;
  final PhotoData? userPhoto;


  const PhotoQuestionState({this.photoList = const [], this.userPhoto});

  PhotoQuestionState copyWith(
      {List<PhotoData>? photoList, PhotoData? userPhoto}) {
    return PhotoQuestionState(
        photoList: photoList ?? this.photoList, userPhoto: userPhoto ?? this.
        userPhoto);
  }

}
