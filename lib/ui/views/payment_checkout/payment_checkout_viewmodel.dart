import 'package:edtechapp/app/app.locator.dart';
import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/model/credit_card.dart';
import 'package:edtechapp/repository/topic_repository.dart';
import 'package:edtechapp/services/repository_service.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/common/app_exception_constants.dart';
import 'package:edtechapp/ui/common/app_temp.dart';
import 'package:edtechapp/ui/common/busy_object_constants.dart';
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
    setBusyForObject(BusyObjectConstants.cardText, true);
    creditCard = AppTempConstant.tempCard!;
    setBusyForObject(BusyObjectConstants.cardText, false);
  }

  Future<void> payCourse() async {
    final response =
        await _repository.buyCourse(AppTempConstant.tempCourse!.id);

    response.fold((error) {
      if (error is InvalidInputException) {
        _snackBarService.showSnackbar(message: AppExceptionConstants.invalidInputText);
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
            message: AppConstants.coursePurchaseSuccessfullyText,
            duration: const Duration(seconds: 2));
        Future.delayed(const Duration(seconds: 2));
        _navigationService.popUntil((route) => route.settings.name == Routes.projectDetailView);
        _navigationService.replaceWithYourCoursesView();
      });
    });
  }
}
