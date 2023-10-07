class AppRepository{
  int correctAnswerCount = 0;
  int wrongAnswerCount = 0;

  AppRepository._internal();
  static final AppRepository _instence = AppRepository._internal();

  factory AppRepository.getInstance(){
    return _instence;
  }
}