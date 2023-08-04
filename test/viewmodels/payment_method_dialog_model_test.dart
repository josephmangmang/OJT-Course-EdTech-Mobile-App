import 'package:flutter_test/flutter_test.dart';
import 'package:edtechapp/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('PaymentMethodDialogModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
