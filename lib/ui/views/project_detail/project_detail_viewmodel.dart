import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../model/course.dart';
import '../../../services/repository_service.dart';
import '../../../services/shared_service.dart';

class ProjectDetailViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _repositoryService = locator<RepositoryService>();
  final _snackBarService = locator<SnackbarService>();

  bool? isCart;
  final Course course;

  ProjectDetailViewModel(this.course);

  Future<void> addToCart() async {
    setBusy(true);
    final response = await _repositoryService.addCourseToCart(course.id);
    setBusy(false);
    response.fold((l) {
      _snackBarService.showSnackbar(message: l.message.toString());
    }, (r) {
      _snackBarService.showSnackbar(message: AppConstants.cartCourseText);
    });
  }

  void buyMe() {
    _navigationService.navigateToPaymentAddedView();
  }
}
