import 'package:edtechapp/repository/course_repository_impl.dart';
import 'package:edtechapp/repository/question_repository_impl.dart';
import 'package:edtechapp/repository/topic_repository.dart';
import 'package:edtechapp/repository/topic_repository_impl.dart';
import 'package:edtechapp/services/authentication_service_impl.dart';
import 'package:edtechapp/services/shared_pref_service_service_impl.dart';
import 'package:edtechapp/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:edtechapp/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:edtechapp/ui/views/home/home_view.dart';
import 'package:edtechapp/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:edtechapp/ui/views/login/login_view.dart';
import 'package:edtechapp/ui/views/sign_up/sign_up_view.dart';
import 'package:edtechapp/ui/views/profile/profile_view.dart';
import 'package:edtechapp/ui/views/settings/settings_view.dart';
import 'package:edtechapp/ui/views/project_detail/project_detail_view.dart';
import 'package:edtechapp/ui/views/your_courses/your_courses_view.dart';
import 'package:edtechapp/ui/views/lesson_courses/lesson_courses_view.dart';
import 'package:edtechapp/ui/views/not_saved/not_saved_view.dart';
import 'package:edtechapp/ui/views/no_payment/no_payment_view.dart';
import 'package:edtechapp/ui/views/saved/saved_view.dart';
import 'package:edtechapp/ui/views/payment_addded/payment_added_view.dart';
import 'package:edtechapp/ui/views/not_found/not_found_view.dart';
import 'package:edtechapp/ui/views/intro/intro_view.dart';

import 'package:edtechapp/ui/views/course_lesson/course_lesson_view.dart';
import 'package:edtechapp/ui/views/course_test/course_test_view.dart';
import 'package:edtechapp/ui/views/test_question/test_question_view.dart';
import 'package:edtechapp/ui/views/result/result_view.dart';
import 'package:edtechapp/ui/views/search_results/search_results_view.dart';
import 'package:edtechapp/services/repository_service.dart';
import 'package:edtechapp/services/repository_impl_service.dart';
import 'package:edtechapp/ui/views/forgot_password/forgot_password_view.dart';
import 'package:edtechapp/services/shared_service.dart';
import 'package:edtechapp/services/share_impl_service.dart';
import 'package:edtechapp/services/course_impl_service.dart';
import 'package:edtechapp/services/authentication_service.dart';
import 'package:edtechapp/services/shared_pref_service_service.dart';

import '../repository/question_repository.dart';
import '../services/authentication_service_mock.dart';
import 'package:edtechapp/ui/views/payment_methods/payment_methods_view.dart';
import 'package:edtechapp/ui/views/payment_checkout/payment_checkout_view.dart';
import 'package:edtechapp/ui/views/cart/cart_view.dart';
import 'package:edtechapp/ui/views/add_credit_card/add_credit_card_view.dart';
import 'package:edtechapp/repository/course_repository.dart';
import 'package:edtechapp/ui/dialogs/update_password/update_password_dialog.dart';
import 'package:edtechapp/ui/dialogs/update_email/update_email_dialog.dart';
import 'package:edtechapp/ui/dialogs/update_name/update_name_dialog.dart';
import 'package:edtechapp/ui/dialogs/update_profile/update_profile_dialog.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: SettingsView),
    CustomRoute(
        page: ProjectDetailView,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade),
    MaterialRoute(page: YourCoursesView),
    MaterialRoute(page: LessonCoursesView),
    MaterialRoute(page: NotSavedView),
    MaterialRoute(page: NoPaymentView),
    MaterialRoute(page: SavedView),
    MaterialRoute(page: PaymentAddedView),
    MaterialRoute(page: NotFoundView),
    MaterialRoute(page: IntroPage),

    MaterialRoute(page: CourseLessonView),
    MaterialRoute(page: CourseTestView),
    MaterialRoute(page: TestQuestionView),
    MaterialRoute(page: ResultView),
    MaterialRoute(page: SearchResultsView),
    MaterialRoute(page: ForgotPasswordView),
    MaterialRoute(page: PaymentMethodsView),
    MaterialRoute(page: PaymentCheckoutView),
    MaterialRoute(page: CartView),
    MaterialRoute(page: AddCreditCardView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: RepositoryImplService, asType: RepositoryService),
    LazySingleton(classType: ShareImplService, asType: SharedService),
    LazySingleton(classType: CourseImplService),
    LazySingleton(
        environments: {Environment.dev},
        classType: AuthenticationServiceMock,
        asType: AuthenticationService),
    LazySingleton(
        environments: {Environment.prod},
        classType: AuthenticationServiceImpl,
        asType: AuthenticationService),
    LazySingleton(
        classType: SharedPrefServiceServiceImpl,
        asType: SharedPrefServiceService),
    LazySingleton(classType: CourseRepositoryImpl, asType: CourseRepository),
    LazySingleton(classType: TopicRepositoryImp, asType: TopicRepository),
    LazySingleton(classType: QuestionRepositoryImpl, asType: QuestionRepository),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: UpdatePasswordDialog),
    StackedDialog(classType: UpdateEmailDialog),
    StackedDialog(classType: UpdateNameDialog),
    StackedDialog(classType: UpdateProfileDialog),
// @stacked-dialog
  ],
)
class App {}
