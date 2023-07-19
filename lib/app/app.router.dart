// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:edtechapp/model/course.dart' as _i28;
import 'package:edtechapp/ui/views/add_credit_card/add_credit_card_view.dart'
    as _i26;
import 'package:edtechapp/ui/views/cart/cart_view.dart' as _i25;
import 'package:edtechapp/ui/views/course_lesson/course_lesson_view.dart'
    as _i17;
import 'package:edtechapp/ui/views/course_test/course_test_view.dart' as _i18;
import 'package:edtechapp/ui/views/forgot_password/forgot_password_view.dart'
    as _i22;
import 'package:edtechapp/ui/views/home/home_view.dart' as _i2;
import 'package:edtechapp/ui/views/intro/intro_view.dart' as _i16;
import 'package:edtechapp/ui/views/lesson_courses/lesson_courses_view.dart'
    as _i10;
import 'package:edtechapp/ui/views/login/login_view.dart' as _i4;
import 'package:edtechapp/ui/views/no_payment/no_payment_view.dart' as _i12;
import 'package:edtechapp/ui/views/not_found/not_found_view.dart' as _i15;
import 'package:edtechapp/ui/views/not_saved/not_saved_view.dart' as _i11;
import 'package:edtechapp/ui/views/payment_addded/payment_addded_view.dart'
    as _i14;
import 'package:edtechapp/ui/views/payment_checkout/payment_checkout_view.dart'
    as _i24;
import 'package:edtechapp/ui/views/payment_methods/payment_methods_view.dart'
    as _i23;
import 'package:edtechapp/ui/views/profile/profile_view.dart' as _i6;
import 'package:edtechapp/ui/views/project_detail/project_detail_view.dart'
    as _i8;
import 'package:edtechapp/ui/views/result/result_view.dart' as _i20;
import 'package:edtechapp/ui/views/saved/saved_view.dart' as _i13;
import 'package:edtechapp/ui/views/search_results/search_results_view.dart'
    as _i21;
import 'package:edtechapp/ui/views/settings/settings_view.dart' as _i7;
import 'package:edtechapp/ui/views/sign_up/sign_up_view.dart' as _i5;
import 'package:edtechapp/ui/views/startup/startup_view.dart' as _i3;
import 'package:edtechapp/ui/views/test_question/test_question_view.dart'
    as _i19;
import 'package:edtechapp/ui/views/your_courses/your_courses_view.dart' as _i9;
import 'package:flutter/material.dart' as _i27;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i29;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const loginView = '/login-view';

  static const signUpView = '/sign-up-view';

  static const profileView = '/profile-view';

  static const settingsView = '/settings-view';

  static const projectDetailView = '/project-detail-view';

  static const yourCoursesView = '/your-courses-view';

  static const lessonCoursesView = '/lesson-courses-view';

  static const notSavedView = '/not-saved-view';

  static const noPaymentView = '/no-payment-view';

  static const savedView = '/saved-view';

  static const paymentAdddedView = '/payment-addded-view';

  static const notFoundView = '/not-found-view';

  static const introPage = '/intro-page';

  static const courseLessonView = '/course-lesson-view';

  static const courseTestView = '/course-test-view';

  static const testQuestionView = '/test-question-view';

  static const resultView = '/result-view';

  static const searchResultsView = '/search-results-view';

  static const forgotPasswordView = '/forgot-password-view';

  static const paymentMethodsView = '/payment-methods-view';

  static const paymentCheckoutView = '/payment-checkout-view';

  static const cartView = '/cart-view';

  static const addCreditCardView = '/add-credit-card-view';

  static const all = <String>{
    homeView,
    startupView,
    loginView,
    signUpView,
    profileView,
    settingsView,
    projectDetailView,
    yourCoursesView,
    lessonCoursesView,
    notSavedView,
    noPaymentView,
    savedView,
    paymentAdddedView,
    notFoundView,
    introPage,
    courseLessonView,
    courseTestView,
    testQuestionView,
    resultView,
    searchResultsView,
    forgotPasswordView,
    paymentMethodsView,
    paymentCheckoutView,
    cartView,
    addCreditCardView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.signUpView,
      page: _i5.SignUpView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i6.ProfileView,
    ),
    _i1.RouteDef(
      Routes.settingsView,
      page: _i7.SettingsView,
    ),
    _i1.RouteDef(
      Routes.projectDetailView,
      page: _i8.ProjectDetailView,
    ),
    _i1.RouteDef(
      Routes.yourCoursesView,
      page: _i9.YourCoursesView,
    ),
    _i1.RouteDef(
      Routes.lessonCoursesView,
      page: _i10.LessonCoursesView,
    ),
    _i1.RouteDef(
      Routes.notSavedView,
      page: _i11.NotSavedView,
    ),
    _i1.RouteDef(
      Routes.noPaymentView,
      page: _i12.NoPaymentView,
    ),
    _i1.RouteDef(
      Routes.savedView,
      page: _i13.SavedView,
    ),
    _i1.RouteDef(
      Routes.paymentAdddedView,
      page: _i14.PaymentAdddedView,
    ),
    _i1.RouteDef(
      Routes.notFoundView,
      page: _i15.NotFoundView,
    ),
    _i1.RouteDef(
      Routes.introPage,
      page: _i16.IntroPage,
    ),
    _i1.RouteDef(
      Routes.courseLessonView,
      page: _i17.CourseLessonView,
    ),
    _i1.RouteDef(
      Routes.courseTestView,
      page: _i18.CourseTestView,
    ),
    _i1.RouteDef(
      Routes.testQuestionView,
      page: _i19.TestQuestionView,
    ),
    _i1.RouteDef(
      Routes.resultView,
      page: _i20.ResultView,
    ),
    _i1.RouteDef(
      Routes.searchResultsView,
      page: _i21.SearchResultsView,
    ),
    _i1.RouteDef(
      Routes.forgotPasswordView,
      page: _i22.ForgotPasswordView,
    ),
    _i1.RouteDef(
      Routes.paymentMethodsView,
      page: _i23.PaymentMethodsView,
    ),
    _i1.RouteDef(
      Routes.paymentCheckoutView,
      page: _i24.PaymentCheckoutView,
    ),
    _i1.RouteDef(
      Routes.cartView,
      page: _i25.CartView,
    ),
    _i1.RouteDef(
      Routes.addCreditCardView,
      page: _i26.AddCreditCardView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginView(),
        settings: data,
      );
    },
    _i5.SignUpView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.SignUpView(),
        settings: data,
      );
    },
    _i6.ProfileView: (data) {
      final args = data.getArgs<ProfileViewArguments>(nullOk: false);
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i6.ProfileView(key: args.key, onBackPressed: args.onBackPressed),
        settings: data,
      );
    },
    _i7.SettingsView: (data) {
      final args = data.getArgs<SettingsViewArguments>(nullOk: false);
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i7.SettingsView(key: args.key, onBackPressed: args.onBackPressed),
        settings: data,
      );
    },
    _i8.ProjectDetailView: (data) {
      final args = data.getArgs<ProjectDetailViewArguments>(nullOk: false);
      return _i27.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            _i8.ProjectDetailView(args.course, key: args.key),
        settings: data,
        transitionsBuilder:
            data.transition ?? _i1.TransitionsBuilders.slideLeftWithFade,
      );
    },
    _i9.YourCoursesView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.YourCoursesView(),
        settings: data,
      );
    },
    _i10.LessonCoursesView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.LessonCoursesView(),
        settings: data,
      );
    },
    _i11.NotSavedView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.NotSavedView(),
        settings: data,
      );
    },
    _i12.NoPaymentView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.NoPaymentView(),
        settings: data,
      );
    },
    _i13.SavedView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.SavedView(),
        settings: data,
      );
    },
    _i14.PaymentAdddedView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.PaymentAdddedView(),
        settings: data,
      );
    },
    _i15.NotFoundView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.NotFoundView(),
        settings: data,
      );
    },
    _i16.IntroPage: (data) {
      final args = data.getArgs<IntroPageArguments>(
        orElse: () => const IntroPageArguments(),
      );
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => _i16.IntroPage(key: args.key),
        settings: data,
      );
    },
    _i17.CourseLessonView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.CourseLessonView(),
        settings: data,
      );
    },
    _i18.CourseTestView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.CourseTestView(),
        settings: data,
      );
    },
    _i19.TestQuestionView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.TestQuestionView(),
        settings: data,
      );
    },
    _i20.ResultView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.ResultView(),
        settings: data,
      );
    },
    _i21.SearchResultsView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i21.SearchResultsView(),
        settings: data,
      );
    },
    _i22.ForgotPasswordView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i22.ForgotPasswordView(),
        settings: data,
      );
    },
    _i23.PaymentMethodsView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i23.PaymentMethodsView(),
        settings: data,
      );
    },
    _i24.PaymentCheckoutView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i24.PaymentCheckoutView(),
        settings: data,
      );
    },
    _i25.CartView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i25.CartView(),
        settings: data,
      );
    },
    _i26.AddCreditCardView: (data) {
      return _i27.MaterialPageRoute<dynamic>(
        builder: (context) => const _i26.AddCreditCardView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class ProfileViewArguments {
  const ProfileViewArguments({
    this.key,
    required this.onBackPressed,
  });

  final _i27.Key? key;

  final dynamic Function() onBackPressed;

  @override
  String toString() {
    return '{"key": "$key", "onBackPressed": "$onBackPressed"}';
  }

  @override
  bool operator ==(covariant ProfileViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.onBackPressed == onBackPressed;
  }

  @override
  int get hashCode {
    return key.hashCode ^ onBackPressed.hashCode;
  }
}

class SettingsViewArguments {
  const SettingsViewArguments({
    this.key,
    required this.onBackPressed,
  });

  final _i27.Key? key;

  final dynamic Function() onBackPressed;

  @override
  String toString() {
    return '{"key": "$key", "onBackPressed": "$onBackPressed"}';
  }

  @override
  bool operator ==(covariant SettingsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.onBackPressed == onBackPressed;
  }

  @override
  int get hashCode {
    return key.hashCode ^ onBackPressed.hashCode;
  }
}

class ProjectDetailViewArguments {
  const ProjectDetailViewArguments({
    required this.course,
    this.key,
  });

  final _i28.Course course;

  final _i27.Key? key;

  @override
  String toString() {
    return '{"course": "$course", "key": "$key"}';
  }

  @override
  bool operator ==(covariant ProjectDetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.course == course && other.key == key;
  }

  @override
  int get hashCode {
    return course.hashCode ^ key.hashCode;
  }
}

class IntroPageArguments {
  const IntroPageArguments({this.key});

  final _i27.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant IntroPageArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

extension NavigatorStateExtension on _i29.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView({
    _i27.Key? key,
    required dynamic Function() onBackPressed,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.profileView,
        arguments: ProfileViewArguments(key: key, onBackPressed: onBackPressed),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSettingsView({
    _i27.Key? key,
    required dynamic Function() onBackPressed,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.settingsView,
        arguments:
            SettingsViewArguments(key: key, onBackPressed: onBackPressed),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProjectDetailView({
    required _i28.Course course,
    _i27.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.projectDetailView,
        arguments: ProjectDetailViewArguments(course: course, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToYourCoursesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.yourCoursesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLessonCoursesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.lessonCoursesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNotSavedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.notSavedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNoPaymentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.noPaymentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSavedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.savedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPaymentAdddedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.paymentAdddedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNotFoundView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.notFoundView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToIntroPage({
    _i27.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.introPage,
        arguments: IntroPageArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCourseLessonView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.courseLessonView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCourseTestView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.courseTestView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTestQuestionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.testQuestionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToResultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.resultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSearchResultsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.searchResultsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToForgotPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.forgotPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPaymentMethodsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.paymentMethodsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPaymentCheckoutView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.paymentCheckoutView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.cartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAddCreditCardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.addCreditCardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView({
    _i27.Key? key,
    required dynamic Function() onBackPressed,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.profileView,
        arguments: ProfileViewArguments(key: key, onBackPressed: onBackPressed),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSettingsView({
    _i27.Key? key,
    required dynamic Function() onBackPressed,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.settingsView,
        arguments:
            SettingsViewArguments(key: key, onBackPressed: onBackPressed),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProjectDetailView({
    required _i28.Course course,
    _i27.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.projectDetailView,
        arguments: ProjectDetailViewArguments(course: course, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithYourCoursesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.yourCoursesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLessonCoursesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.lessonCoursesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNotSavedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.notSavedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNoPaymentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.noPaymentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSavedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.savedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPaymentAdddedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.paymentAdddedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNotFoundView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.notFoundView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithIntroPage({
    _i27.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.introPage,
        arguments: IntroPageArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCourseLessonView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.courseLessonView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCourseTestView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.courseTestView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTestQuestionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.testQuestionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithResultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.resultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSearchResultsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.searchResultsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithForgotPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.forgotPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPaymentMethodsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.paymentMethodsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPaymentCheckoutView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.paymentCheckoutView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.cartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAddCreditCardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.addCreditCardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
