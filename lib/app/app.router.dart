// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:edtechapp/model/course.dart' as _i25;
import 'package:edtechapp/model/topic.dart' as _i26;
import 'package:edtechapp/ui/views/add_credit_card/add_credit_card_view.dart'
    as _i23;
import 'package:edtechapp/ui/views/course_lesson/course_lesson_view.dart'
    as _i15;
import 'package:edtechapp/ui/views/course_test/course_test_view.dart' as _i16;
import 'package:edtechapp/ui/views/forgot_password/forgot_password_view.dart'
    as _i20;
import 'package:edtechapp/ui/views/home/home_view.dart' as _i2;
import 'package:edtechapp/ui/views/intro/intro_view.dart' as _i14;
import 'package:edtechapp/ui/views/lesson_courses/lesson_courses_view.dart'
    as _i10;
import 'package:edtechapp/ui/views/login/login_view.dart' as _i4;
import 'package:edtechapp/ui/views/no_payment/no_payment_view.dart' as _i11;
import 'package:edtechapp/ui/views/not_found/not_found_view.dart' as _i13;
import 'package:edtechapp/ui/views/payment_added/payment_added_view.dart'
    as _i12;
import 'package:edtechapp/ui/views/payment_checkout/payment_checkout_view.dart'
    as _i22;
import 'package:edtechapp/ui/views/payment_methods/payment_methods_view.dart'
    as _i21;
import 'package:edtechapp/ui/views/profile/profile_view.dart' as _i6;
import 'package:edtechapp/ui/views/project_detail/project_detail_view.dart'
    as _i8;
import 'package:edtechapp/ui/views/result/result_view.dart' as _i18;
import 'package:edtechapp/ui/views/search_results/search_results_view.dart'
    as _i19;
import 'package:edtechapp/ui/views/settings/settings_view.dart' as _i7;
import 'package:edtechapp/ui/views/sign_up/sign_up_view.dart' as _i5;
import 'package:edtechapp/ui/views/startup/startup_view.dart' as _i3;
import 'package:edtechapp/ui/views/test_question/test_question_view.dart'
    as _i17;
import 'package:edtechapp/ui/views/your_courses/your_courses_view.dart' as _i9;
import 'package:flutter/material.dart' as _i24;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i27;

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

  static const noPaymentView = '/no-payment-view';

  static const paymentAddedView = '/payment-added-view';

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
    noPaymentView,
    paymentAddedView,
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
      Routes.noPaymentView,
      page: _i11.NoPaymentView,
    ),
    _i1.RouteDef(
      Routes.paymentAddedView,
      page: _i12.PaymentAddedView,
    ),
    _i1.RouteDef(
      Routes.notFoundView,
      page: _i13.NotFoundView,
    ),
    _i1.RouteDef(
      Routes.introPage,
      page: _i14.IntroPage,
    ),
    _i1.RouteDef(
      Routes.courseLessonView,
      page: _i15.CourseLessonView,
    ),
    _i1.RouteDef(
      Routes.courseTestView,
      page: _i16.CourseTestView,
    ),
    _i1.RouteDef(
      Routes.testQuestionView,
      page: _i17.TestQuestionView,
    ),
    _i1.RouteDef(
      Routes.resultView,
      page: _i18.ResultView,
    ),
    _i1.RouteDef(
      Routes.searchResultsView,
      page: _i19.SearchResultsView,
    ),
    _i1.RouteDef(
      Routes.forgotPasswordView,
      page: _i20.ForgotPasswordView,
    ),
    _i1.RouteDef(
      Routes.paymentMethodsView,
      page: _i21.PaymentMethodsView,
    ),
    _i1.RouteDef(
      Routes.paymentCheckoutView,
      page: _i22.PaymentCheckoutView,
    ),
    _i1.RouteDef(
      Routes.addCreditCardView,
      page: _i23.AddCreditCardView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginView(),
        settings: data,
      );
    },
    _i5.SignUpView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.SignUpView(),
        settings: data,
      );
    },
    _i6.ProfileView: (data) {
      final args = data.getArgs<ProfileViewArguments>(nullOk: false);
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i6.ProfileView(key: args.key, onBackPressed: args.onBackPressed),
        settings: data,
      );
    },
    _i7.SettingsView: (data) {
      final args = data.getArgs<SettingsViewArguments>(nullOk: false);
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i7.SettingsView(key: args.key, onBackPressed: args.onBackPressed),
        settings: data,
      );
    },
    _i8.ProjectDetailView: (data) {
      final args = data.getArgs<ProjectDetailViewArguments>(nullOk: false);
      return _i24.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            _i8.ProjectDetailView(args.course, key: args.key),
        settings: data,
        transitionsBuilder:
            data.transition ?? _i1.TransitionsBuilders.slideLeftWithFade,
      );
    },
    _i9.YourCoursesView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.YourCoursesView(),
        settings: data,
      );
    },
    _i10.LessonCoursesView: (data) {
      final args = data.getArgs<LessonCoursesViewArguments>(nullOk: false);
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i10.LessonCoursesView(args.course, key: args.key),
        settings: data,
      );
    },
    _i11.NoPaymentView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.NoPaymentView(),
        settings: data,
      );
    },
    _i12.PaymentAddedView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.PaymentAddedView(),
        settings: data,
      );
    },
    _i13.NotFoundView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.NotFoundView(),
        settings: data,
      );
    },
    _i14.IntroPage: (data) {
      final args = data.getArgs<IntroPageArguments>(
        orElse: () => const IntroPageArguments(),
      );
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => _i14.IntroPage(key: args.key),
        settings: data,
      );
    },
    _i15.CourseLessonView: (data) {
      final args = data.getArgs<CourseLessonViewArguments>(nullOk: false);
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => _i15.CourseLessonView(
            args.topic, args.lessonCount, args.course,
            key: args.key),
        settings: data,
      );
    },
    _i16.CourseTestView: (data) {
      final args = data.getArgs<CourseTestViewArguments>(nullOk: false);
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i16.CourseTestView(args.topic, args.course, key: args.key),
        settings: data,
      );
    },
    _i17.TestQuestionView: (data) {
      final args = data.getArgs<TestQuestionViewArguments>(nullOk: false);
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i17.TestQuestionView(args.course, args.topic, key: args.key),
        settings: data,
      );
    },
    _i18.ResultView: (data) {
      final args = data.getArgs<ResultViewArguments>(nullOk: false);
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i18.ResultView(textResult: args.textResult, key: args.key),
        settings: data,
      );
    },
    _i19.SearchResultsView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.SearchResultsView(),
        settings: data,
      );
    },
    _i20.ForgotPasswordView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.ForgotPasswordView(),
        settings: data,
      );
    },
    _i21.PaymentMethodsView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i21.PaymentMethodsView(),
        settings: data,
      );
    },
    _i22.PaymentCheckoutView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i22.PaymentCheckoutView(),
        settings: data,
      );
    },
    _i23.AddCreditCardView: (data) {
      final args = data.getArgs<AddCreditCardViewArguments>(nullOk: false);
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => _i23.AddCreditCardView(
            args.oldPaymentMethod,
            args.name,
            args.cardNumber,
            args.expireDate,
            args.cvv,
            args.cardId,
            args.paymentMethod,
            key: args.key),
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

  final _i24.Key? key;

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

  final _i24.Key? key;

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

  final _i25.Course course;

  final _i24.Key? key;

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

class LessonCoursesViewArguments {
  const LessonCoursesViewArguments({
    required this.course,
    this.key,
  });

  final _i25.Course course;

  final _i24.Key? key;

  @override
  String toString() {
    return '{"course": "$course", "key": "$key"}';
  }

  @override
  bool operator ==(covariant LessonCoursesViewArguments other) {
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

  final _i24.Key? key;

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

class CourseLessonViewArguments {
  const CourseLessonViewArguments({
    required this.topic,
    required this.lessonCount,
    required this.course,
    this.key,
  });

  final _i26.Topic topic;

  final String lessonCount;

  final _i25.Course course;

  final _i24.Key? key;

  @override
  String toString() {
    return '{"topic": "$topic", "lessonCount": "$lessonCount", "course": "$course", "key": "$key"}';
  }

  @override
  bool operator ==(covariant CourseLessonViewArguments other) {
    if (identical(this, other)) return true;
    return other.topic == topic &&
        other.lessonCount == lessonCount &&
        other.course == course &&
        other.key == key;
  }

  @override
  int get hashCode {
    return topic.hashCode ^
        lessonCount.hashCode ^
        course.hashCode ^
        key.hashCode;
  }
}

class CourseTestViewArguments {
  const CourseTestViewArguments({
    required this.topic,
    required this.course,
    this.key,
  });

  final _i26.Topic topic;

  final _i25.Course course;

  final _i24.Key? key;

  @override
  String toString() {
    return '{"topic": "$topic", "course": "$course", "key": "$key"}';
  }

  @override
  bool operator ==(covariant CourseTestViewArguments other) {
    if (identical(this, other)) return true;
    return other.topic == topic && other.course == course && other.key == key;
  }

  @override
  int get hashCode {
    return topic.hashCode ^ course.hashCode ^ key.hashCode;
  }
}

class TestQuestionViewArguments {
  const TestQuestionViewArguments({
    required this.course,
    required this.topic,
    this.key,
  });

  final _i25.Course course;

  final _i26.Topic topic;

  final _i24.Key? key;

  @override
  String toString() {
    return '{"course": "$course", "topic": "$topic", "key": "$key"}';
  }

  @override
  bool operator ==(covariant TestQuestionViewArguments other) {
    if (identical(this, other)) return true;
    return other.course == course && other.topic == topic && other.key == key;
  }

  @override
  int get hashCode {
    return course.hashCode ^ topic.hashCode ^ key.hashCode;
  }
}

class ResultViewArguments {
  const ResultViewArguments({
    required this.textResult,
    this.key,
  });

  final String textResult;

  final _i24.Key? key;

  @override
  String toString() {
    return '{"textResult": "$textResult", "key": "$key"}';
  }

  @override
  bool operator ==(covariant ResultViewArguments other) {
    if (identical(this, other)) return true;
    return other.textResult == textResult && other.key == key;
  }

  @override
  int get hashCode {
    return textResult.hashCode ^ key.hashCode;
  }
}

class AddCreditCardViewArguments {
  const AddCreditCardViewArguments({
    required this.oldPaymentMethod,
    required this.name,
    required this.cardNumber,
    required this.expireDate,
    required this.cvv,
    required this.cardId,
    required this.paymentMethod,
    this.key,
  });

  final bool oldPaymentMethod;

  final String name;

  final String cardNumber;

  final String expireDate;

  final String cvv;

  final String cardId;

  final String paymentMethod;

  final _i24.Key? key;

  @override
  String toString() {
    return '{"oldPaymentMethod": "$oldPaymentMethod", "name": "$name", "cardNumber": "$cardNumber", "expireDate": "$expireDate", "cvv": "$cvv", "cardId": "$cardId", "paymentMethod": "$paymentMethod", "key": "$key"}';
  }

  @override
  bool operator ==(covariant AddCreditCardViewArguments other) {
    if (identical(this, other)) return true;
    return other.oldPaymentMethod == oldPaymentMethod &&
        other.name == name &&
        other.cardNumber == cardNumber &&
        other.expireDate == expireDate &&
        other.cvv == cvv &&
        other.cardId == cardId &&
        other.paymentMethod == paymentMethod &&
        other.key == key;
  }

  @override
  int get hashCode {
    return oldPaymentMethod.hashCode ^
        name.hashCode ^
        cardNumber.hashCode ^
        expireDate.hashCode ^
        cvv.hashCode ^
        cardId.hashCode ^
        paymentMethod.hashCode ^
        key.hashCode;
  }
}

extension NavigatorStateExtension on _i27.NavigationService {
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
    _i24.Key? key,
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
    _i24.Key? key,
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
    required _i25.Course course,
    _i24.Key? key,
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

  Future<dynamic> navigateToLessonCoursesView({
    required _i25.Course course,
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.lessonCoursesView,
        arguments: LessonCoursesViewArguments(course: course, key: key),
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

  Future<dynamic> navigateToPaymentAddedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.paymentAddedView,
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
    _i24.Key? key,
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

  Future<dynamic> navigateToCourseLessonView({
    required _i26.Topic topic,
    required String lessonCount,
    required _i25.Course course,
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.courseLessonView,
        arguments: CourseLessonViewArguments(
            topic: topic, lessonCount: lessonCount, course: course, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCourseTestView({
    required _i26.Topic topic,
    required _i25.Course course,
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.courseTestView,
        arguments:
            CourseTestViewArguments(topic: topic, course: course, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTestQuestionView({
    required _i25.Course course,
    required _i26.Topic topic,
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.testQuestionView,
        arguments:
            TestQuestionViewArguments(course: course, topic: topic, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToResultView({
    required String textResult,
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.resultView,
        arguments: ResultViewArguments(textResult: textResult, key: key),
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

  Future<dynamic> navigateToAddCreditCardView({
    required bool oldPaymentMethod,
    required String name,
    required String cardNumber,
    required String expireDate,
    required String cvv,
    required String cardId,
    required String paymentMethod,
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.addCreditCardView,
        arguments: AddCreditCardViewArguments(
            oldPaymentMethod: oldPaymentMethod,
            name: name,
            cardNumber: cardNumber,
            expireDate: expireDate,
            cvv: cvv,
            cardId: cardId,
            paymentMethod: paymentMethod,
            key: key),
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
    _i24.Key? key,
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
    _i24.Key? key,
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
    required _i25.Course course,
    _i24.Key? key,
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

  Future<dynamic> replaceWithLessonCoursesView({
    required _i25.Course course,
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.lessonCoursesView,
        arguments: LessonCoursesViewArguments(course: course, key: key),
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

  Future<dynamic> replaceWithPaymentAddedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.paymentAddedView,
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
    _i24.Key? key,
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

  Future<dynamic> replaceWithCourseLessonView({
    required _i26.Topic topic,
    required String lessonCount,
    required _i25.Course course,
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.courseLessonView,
        arguments: CourseLessonViewArguments(
            topic: topic, lessonCount: lessonCount, course: course, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCourseTestView({
    required _i26.Topic topic,
    required _i25.Course course,
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.courseTestView,
        arguments:
            CourseTestViewArguments(topic: topic, course: course, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTestQuestionView({
    required _i25.Course course,
    required _i26.Topic topic,
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.testQuestionView,
        arguments:
            TestQuestionViewArguments(course: course, topic: topic, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithResultView({
    required String textResult,
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.resultView,
        arguments: ResultViewArguments(textResult: textResult, key: key),
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

  Future<dynamic> replaceWithAddCreditCardView({
    required bool oldPaymentMethod,
    required String name,
    required String cardNumber,
    required String expireDate,
    required String cvv,
    required String cardId,
    required String paymentMethod,
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.addCreditCardView,
        arguments: AddCreditCardViewArguments(
            oldPaymentMethod: oldPaymentMethod,
            name: name,
            cardNumber: cardNumber,
            expireDate: expireDate,
            cvv: cvv,
            cardId: cardId,
            paymentMethod: paymentMethod,
            key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
