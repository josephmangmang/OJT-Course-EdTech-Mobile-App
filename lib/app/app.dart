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
import 'package:edtechapp/ui/views/project_detail/project_detail_view.dart';
import 'package:edtechapp/ui/views/your_courses/your_courses_view.dart';
import 'package:edtechapp/ui/views/lesson_courses/lesson_courses_view.dart';
import 'package:edtechapp/ui/views/intro/intro_view.dart';

import 'package:edtechapp/ui/views/course_lesson/course_lesson_view.dart';
import 'package:edtechapp/ui/views/course_test/course_test_view.dart';
import 'package:edtechapp/ui/views/test_question/test_question_view.dart';
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
    MaterialRoute(page: ProjectDetailView),
    MaterialRoute(page: YourCoursesView),
    MaterialRoute(page: LessonCoursesView),
    MaterialRoute(page: IntroPage),

    MaterialRoute(page: CourseLessonView),
    MaterialRoute(page: CourseTestView),
    MaterialRoute(page: TestQuestionView),
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
