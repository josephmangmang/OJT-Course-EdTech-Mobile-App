import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:edtechapp/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:edtechapp/services/repository_service.dart';
import 'package:edtechapp/services/repository_impl_service.dart';
import 'package:edtechapp/services/shared_service.dart';
import 'package:edtechapp/services/share_impl_service.dart';
import 'package:edtechapp/services/authentication_service.dart';
import 'package:edtechapp/services/shared_pref_service_service.dart';
import 'package:edtechapp/repository/course_repository.dart';
import 'package:edtechapp/services/image_service.dart';
import 'package:edtechapp/services/image_impl_service.dart';
// @stacked-import

import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<NavigationService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<BottomSheetService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<DialogService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<RepositoryService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<RepositoryImplService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<SharedService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<ShareImplService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<AuthenticationService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<SharedPrefServiceService>(
      onMissingStub: OnMissingStub.returnDefault),
  MockSpec<CourseRepository>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<ImageService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<ImageImplService>(onMissingStub: OnMissingStub.returnDefault),
// @stacked-mock-spec
])
void registerServices() {
  getAndRegisterNavigationService();
  getAndRegisterBottomSheetService();
  getAndRegisterDialogService();

  getAndRegisterRepositoryService();
  getAndRegisterRepositoryImplService();
  getAndRegisterSharedService();
  getAndRegisterShareImplService();
  getAndRegisterAuthenticationService();
  getAndRegisterSharedPrefServiceService();
  getAndRegisterCourseRepositoryService();
  getAndRegisterImageService();
  getAndRegisterImageImplService();
// @stacked-mock-register
}

MockNavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

MockBottomSheetService getAndRegisterBottomSheetService<T>({
  SheetResponse<T>? showCustomSheetResponse,
}) {
  _removeRegistrationIfExists<BottomSheetService>();
  final service = MockBottomSheetService();

  when(service.showCustomSheet<T, T>(
    enableDrag: anyNamed('enableDrag'),
    enterBottomSheetDuration: anyNamed('enterBottomSheetDuration'),
    exitBottomSheetDuration: anyNamed('exitBottomSheetDuration'),
    ignoreSafeArea: anyNamed('ignoreSafeArea'),
    isScrollControlled: anyNamed('isScrollControlled'),
    barrierDismissible: anyNamed('barrierDismissible'),
    additionalButtonTitle: anyNamed('additionalButtonTitle'),
    variant: anyNamed('variant'),
    title: anyNamed('title'),
    hasImage: anyNamed('hasImage'),
    imageUrl: anyNamed('imageUrl'),
    showIconInMainButton: anyNamed('showIconInMainButton'),
    mainButtonTitle: anyNamed('mainButtonTitle'),
    showIconInSecondaryButton: anyNamed('showIconInSecondaryButton'),
    secondaryButtonTitle: anyNamed('secondaryButtonTitle'),
    showIconInAdditionalButton: anyNamed('showIconInAdditionalButton'),
    takesInput: anyNamed('takesInput'),
    barrierColor: anyNamed('barrierColor'),
    barrierLabel: anyNamed('barrierLabel'),
    customData: anyNamed('customData'),
    data: anyNamed('data'),
    description: anyNamed('description'),
  )).thenAnswer((realInvocation) =>
      Future.value(showCustomSheetResponse ?? SheetResponse<T>()));

  locator.registerSingleton<BottomSheetService>(service);
  return service;
}

MockDialogService getAndRegisterDialogService() {
  _removeRegistrationIfExists<DialogService>();
  final service = MockDialogService();
  locator.registerSingleton<DialogService>(service);
  return service;
}

MockRepositoryService getAndRegisterRepositoryService() {
  _removeRegistrationIfExists<RepositoryService>();
  final service = MockRepositoryService();
  locator.registerSingleton<RepositoryService>(service);
  return service;
}

MockRepositoryImplService getAndRegisterRepositoryImplService() {
  _removeRegistrationIfExists<RepositoryImplService>();
  final service = MockRepositoryImplService();
  locator.registerSingleton<RepositoryImplService>(service);
  return service;
}

MockSharedService getAndRegisterSharedService() {
  _removeRegistrationIfExists<SharedService>();
  final service = MockSharedService();
  locator.registerSingleton<SharedService>(service);
  return service;
}

MockShareImplService getAndRegisterShareImplService() {
  _removeRegistrationIfExists<ShareImplService>();
  final service = MockShareImplService();
  locator.registerSingleton<ShareImplService>(service);
  return service;
}


MockAuthenticationService getAndRegisterAuthenticationService() {
  _removeRegistrationIfExists<AuthenticationService>();
  final service = MockAuthenticationService();
  locator.registerSingleton<AuthenticationService>(service);
  return service;
}

MockSharedPrefServiceService getAndRegisterSharedPrefServiceService() {
  _removeRegistrationIfExists<SharedPrefServiceService>();
  final service = MockSharedPrefServiceService();
  locator.registerSingleton<SharedPrefServiceService>(service);
  return service;
}

MockCourseRepository getAndRegisterCourseRepositoryService() {
  _removeRegistrationIfExists<CourseRepository>();
  final service = MockCourseRepository();
  locator.registerSingleton<CourseRepository>(service);
  return service;
}

MockImageService getAndRegisterImageService() {
  _removeRegistrationIfExists<ImageService>();
  final service = MockImageService();
  locator.registerSingleton<ImageService>(service);
  return service;
}

MockImageImplService getAndRegisterImageImplService() {
  _removeRegistrationIfExists<ImageImplService>();
  final service = MockImageImplService();
  locator.registerSingleton<ImageImplService>(service);
  return service;
}
// @stacked-mock-create

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
