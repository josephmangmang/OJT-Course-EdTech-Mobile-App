import 'package:edtechapp/app/app.bottomsheets.dart';
import 'package:edtechapp/app/app.dialogs.dart';
import 'package:edtechapp/app/app.locator.dart';
import 'package:edtechapp/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  
  void changePage() {
    rebuildUi();
  }
}
