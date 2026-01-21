import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fastblood/screens/splash_screen.dart';

void main() {
  testWidgets('Splash screen UI loads', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: SplashScreen(),
      ),
    );

    // Only pump 1 frame, no timer execution
    await tester.pump(const Duration(milliseconds: 10));

    expect(find.text('FASTBLOOD'), findsOneWidget);
  });
}
