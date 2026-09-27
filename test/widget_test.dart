import 'package:flutter_test/flutter_test.dart';
import 'package:celengance/main.dart';

void main() {
  testWidgets('Celengance App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const CelenganceApp());
    expect(find.text('Celengance'), findsWidgets);
    expect(find.text('Welcome Back'), findsOneWidget);
  });
}