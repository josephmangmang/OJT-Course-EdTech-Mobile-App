import 'package:edtechapp/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:edtechapp/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:edtechapp/ui/views/home/home_view.dart';
import 'package:edtechapp/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:edtechapp/ui/views/intro_1/intro_1_view.dart';

// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: Intro1View),

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
