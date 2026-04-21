import 'package:flutter_test/flutter_test.dart';
import 'package:testing_assignment/app/bmi_app.dart';

void main() {
  testWidgets('renders BMI starter page', (WidgetTester tester) async {
    await tester.pumpWidget(const BmiApp());

    expect(find.text('BMI CALCULATOR'), findsOneWidget);
  });
}
