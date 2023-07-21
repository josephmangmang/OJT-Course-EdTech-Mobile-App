import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/exception/app_exception.dart';
import 'package:edtechapp/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/repository_service.dart';
import '../../../services/shared_service.dart';

class PaymentAdddedViewModel extends BaseViewModel {
  final _repository = locator<RepositoryService>();
  final _shared = locator<SharedService>();
  final _navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();

  Future<void> payCourse() async {
    setBusy(true);
    final response = await _repository.buyCourse(itemId);

    setBusy(false);
    response.fold((error) {
      if (error is InvalidInputException) {
        print(error.message);
        _snackBarService.showSnackbar(message: 'Your input is invalid');
      } else {
        _snackBarService.showSnackbar(message: error.message);
      }
    }, (r) {
      _snackBarService.showSnackbar(message: "Course purchase successfully");
      _navigationService.replaceWithYourCoursesView();
    });
  }

  void backPressed() {
    _navigationService.back();
  }

  void paymentMethod() {
    _navigationService.navigateToPaymentMethodsView();
  }
}
