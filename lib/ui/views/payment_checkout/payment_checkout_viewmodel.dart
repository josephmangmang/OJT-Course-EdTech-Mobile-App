import 'dart:ffi';

import 'package:edtechapp/app/app.locator.dart';
import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/model/course.dart';
import 'package:edtechapp/model/credit_card.dart';
import 'package:edtechapp/repository/topic_repository.dart';
import 'package:edtechapp/services/repository_service.dart';
import 'package:edtechapp/ui/common/app_temp.dart';
import 'package:edtechapp/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../exception/app_exception.dart';

class PaymentCheckoutViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _repository = locator<RepositoryService>();
  final _snackBarService = locator<SnackbarService>();
  final coursePrice = AppTempConstant.tempCourse!.price;
  final _topicRepository = locator<TopicRepository>();
  late CreditCard creditCard;

  void init() {
    setBusyForObject('card', true);
    creditCard = AppTempConstant.tempCard!;
    setBusyForObject('card', false);
  }

  void check() {
    _snackBarService.showSnackbar(message: "debug");
  }

  Future<void> payCourse() async {
    final response =
        await _repository.buyCourse(AppTempConstant.tempCourse!.id);

    response.fold((error) {
      if (error is InvalidInputException) {
        print(error.message);
        _snackBarService.showSnackbar(message: 'Your input is invalid');
      } else {
        _snackBarService.showSnackbar(message: error.message);
      }
    }, (r) async {
      final createTopicProgress = await _topicRepository
          .createTopicProgress(AppTempConstant.tempCourse!.id);
      createTopicProgress.fold((l) {
        _snackBarService.showSnackbar(message: l.message);
      }, (r) {
        _snackBarService.showSnackbar(
            message: "Course purchase successfully",
            duration: const Duration(seconds: 2));
        Future.delayed(const Duration(seconds: 2));
        _navigationService.popUntil((route) => route.settings.name == Routes.projectDetailView);
        _navigationService.replaceWithYourCoursesView();
      });
    });
  }
}
