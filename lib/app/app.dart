import 'package:edtechapp/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:edtechapp/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:edtechapp/ui/views/home/home_view.dart';
import 'package:edtechapp/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:edtechapp/ui/views/login/login_view.dart';
import 'package:edtechapp/ui/views/sign_up/sign_up_view.dart';
import 'package:edtechapp/ui/views/profile/profile_view.dart';
import 'package:edtechapp/ui/views/settings/settings_view.dart';
import 'package:edtechapp/ui/views/result/result_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: SettingsView),
    MaterialRoute(page: ResultView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
