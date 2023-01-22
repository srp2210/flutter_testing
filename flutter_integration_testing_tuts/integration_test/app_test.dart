import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

// TODO 5: Import the app that you want to test

import 'package:flutter_integration_testing_tuts/main.dart' as app;

void main() {
  group('App Test', () {
    // TODO 3: Add the IntegrationTestWidgetsFlutterBinding and .ensureInitialized

    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    // TODO 4: Create your test case
    testWidgets("full app test", (tester) async {
      // TODO 6: execute the app.main() function

      app.main();

      // TODO 7: Wait until the app has settled

      await tester.pumpAndSettle();

      // TODO 8: create finders for email, password and login

      final emailFormField = find.byKey(Key('email'));
      final passwordFormField = find.byType(TextFormField).last;
      final loginButton = find.byType(ElevatedButton).first;

      // TODO 9: Enter text for the email address

      await tester.enterText(emailFormField, 'srp@gmail.com');

      // TODO 10: Enter text for the password

      await tester.enterText(passwordFormField, "123456");
      await tester.pumpAndSettle();

      // TODO 11: Tap on the login button and wait till it settled

      await tester.tap(loginButton);
      await tester.pumpAndSettle();
      // TODO 12: Find the first checkbox in the screen

      final firstCheckbox = find.byType(Checkbox).first;

      // TODO 13.1: Check the semantics of the checkbox if it is not checked

      expect(
        tester.getSemantics(firstCheckbox),
        matchesSemantics(
            hasTapAction: true,
            hasCheckedState: true,
            isChecked: false,
            hasEnabledState: true,
            isEnabled: true,
            isFocusable: true),
      );
      // TODO 13.2: Tap on the checkbox and wait till it settled

      await tester.tap(firstCheckbox);
      await tester.pumpAndSettle();

      // TODO 14: Expect the result to be checked

      expect(
        tester.getSemantics(firstCheckbox),
        matchesSemantics(
            hasTapAction: true,
            hasCheckedState: true,
            isChecked: true,
            hasEnabledState: true,
            isEnabled: true,
            isFocusable: true),
      );
    });
  });
}
