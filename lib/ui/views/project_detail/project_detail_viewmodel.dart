import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/ui/common/app_temp.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../../model/course.dart';

class ProjectDetailViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  bool? isCart;
  final Course course;

  ProjectDetailViewModel(this.course);

  void purchase() {
    AppTempConstant.tempCourse = course;
    _navigationService.navigateToPaymentMethodsView();
  }
}
