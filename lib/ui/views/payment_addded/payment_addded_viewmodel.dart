import 'package:edtechapp/app/app.router.dart';
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
    final response = await _repository.buyCourse(
      itemId
    );

    setBusy(false);

    if (response != null) {
      _snackBarService.showSnackbar(message: response.toString());
    } else {
      _snackBarService.showSnackbar(message: "Course purchase succefully");
      _navigationService.replaceWithYourCoursesView();
    }
  }

}
