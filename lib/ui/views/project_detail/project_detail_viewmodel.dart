import 'package:edtechapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../model/course.dart';
import '../../../services/repository_service.dart';
import '../../../services/shared_service.dart';

class ProjectDetailViewModel extends BaseViewModel {
  final _repository = locator<RepositoryService>();
  final _shared = locator<SharedService>();
  final _navigationService = locator<NavigationService>();
  final Course course;



  ProjectDetailViewModel(this.course);

  void addToCart() {
    _navigationService.navigateToPaymentAddedView();
  }

  void buyMe () {
    _navigationService.navigateToPaymentAddedView();
  }
}
