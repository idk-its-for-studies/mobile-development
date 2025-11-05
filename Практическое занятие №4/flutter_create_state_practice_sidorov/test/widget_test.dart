// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_create_state_practice_sidorov/main.dart';

void main() {
  testWidgets('Counter behavior test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const CounterApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the 'Увеличить' button and trigger a frame.
    await tester.tap(find.text('Увеличить'));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

    // Long press the 'Увеличить' button and trigger a frame.
    await tester.longPress(find.text('Увеличить'));
    await tester.pump();

    // Verify that our counter has incremented by 10.
    expect(find.text('1'), findsNothing);
    expect(find.text('11'), findsOneWidget);

    // Tap the 'Сбросить' button and trigger a frame.
    await tester.tap(find.text('Сбросить'));
    await tester.pump();

    // Verify that our counter has been reset.
    expect(find.text('11'), findsNothing);
    expect(find.text('0'), findsOneWidget);
  });
}