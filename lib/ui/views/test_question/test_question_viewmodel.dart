import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/exception/app_exception.dart';
import 'package:edtechapp/repository/question_repository.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../model/course.dart';
import '../../../model/question.dart';
import '../../../model/topic.dart';
import '../../common/app_constants.dart';

class TestQuestionViewModel extends BaseViewModel {

  Course course;
  Topic topic;

  List<Question> questions = [];
  List<String> correctAnswers = [];

  int questionCurrentIndex = 0;

  Question? currentQuestion;

  int selectedChoice = -1;
  TestQuestionViewModel(this.course, this.topic);

  final _questionRepository = locator<QuestionRepository>();
  final _snackBarService = locator<SnackbarService>();
  final _navigationService = locator<NavigationService>();

  Future<void> init()  async{
    setBusy(true);
    questions = await _questionRepository.getTopicQuestions(course.id, topic.id);
    currentQuestion = questions[questionCurrentIndex];
    setBusy(false);
  }

  void selectChoice(int index) {
    selectedChoice = index;
    rebuildUi();
  }
  void continueClicked() {
    if(selectedChoice < 0) {
      _snackBarService.showSnackbar(message: "Please select your answer!", duration: const Duration(seconds: 3));
      return;
    }
    if(currentQuestion!.choices[selectedChoice] == currentQuestion!.answer) {
      correctAnswers.add(currentQuestion!.id);
    }
    if( questionCurrentIndex == questions.length -1) {
      String result;
      if(questions.length == correctAnswers.length) {
        result = AppConstants.allAnswerCorrect;
      }
      else {
        result = "${correctAnswers.length} of ${questions.length} question are correct. \n Try again next time!";
      }
      _navigationService.replaceWithResultView(textResult: result);
      return;
    }
    questionCurrentIndex++;
    currentQuestion = questions[questionCurrentIndex];
    selectedChoice = -1;
    rebuildUi();
  }
}
