import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_assignment/core/theme/app_theme.dart';
import 'package:testing_assignment/features/bmi/presentation/bloc/bmi_state.dart';
import 'package:testing_assignment/features/bmi/presentation/widgets/calculate_button.dart';
import 'package:testing_assignment/features/bmi/presentation/widgets/gender_card.dart';
import 'package:testing_assignment/features/bmi/presentation/widgets/height_slider_card.dart';
import 'package:testing_assignment/features/bmi/presentation/widgets/value_counter_card.dart';

void main() {
  group('BMI widgets', () {
    testWidgets('age card renders value and buttons', (tester) async {
      // Arrange
      var incrementCount = 0;
      var decrementCount = 0;

      // Act
      await tester.pumpWidget(
        _TestApp(
          child: ValueCounterCard(
            label: 'Age',
            value: 30,
            scale: 1,
            onIncrement: () => incrementCount += 1,
            onDecrement: () => decrementCount += 1,
          ),
        ),
      );
      await tester.tap(find.byIcon(Icons.add));
      await tester.tap(find.byIcon(Icons.remove));

      // Assert
      expect(find.text('Age'), findsOneWidget);
      expect(find.text('30'), findsOneWidget);
      expect(incrementCount, 1);
      expect(decrementCount, 1);
    });

    testWidgets('weight card renders value and buttons', (tester) async {
      // Arrange
      var incrementCount = 0;
      var decrementCount = 0;

      // Act
      await tester.pumpWidget(
        _TestApp(
          child: ValueCounterCard(
            label: 'Weight (KG)',
            value: 78,
            scale: 1,
            onIncrement: () => incrementCount += 1,
            onDecrement: () => decrementCount += 1,
          ),
        ),
      );
      await tester.tap(find.byIcon(Icons.add));
      await tester.tap(find.byIcon(Icons.remove));

      // Assert
      expect(find.text('Weight (KG)'), findsOneWidget);
      expect(find.text('78'), findsOneWidget);
      expect(incrementCount, 1);
      expect(decrementCount, 1);
    });

    testWidgets('height card renders slider and labels', (tester) async {
      // Arrange
      double? changedValue;

      // Act
      await tester.pumpWidget(
        _TestApp(
          child: HeightSliderCard(
            value: 175,
            scale: 1,
            onChanged: (value) => changedValue = value,
          ),
        ),
      );
      await tester.drag(find.byType(Slider), const Offset(80, 0));
      await tester.pump();

      // Assert
      expect(find.text('Height (CM)'), findsOneWidget);
      expect(find.text('175'), findsOneWidget);
      expect(find.text('50 cm'), findsOneWidget);
      expect(find.text('300cm'), findsOneWidget);
      expect(changedValue, isNotNull);
    });

    testWidgets('gender card renders male/female and toggle UI', (tester) async {
      // Arrange
      BmiGender? selectedGender;

      // Act
      await tester.pumpWidget(
        _TestApp(
          child: GenderCard(
            selectedGender: BmiGender.male,
            scale: 1,
            onChanged: (gender) => selectedGender = gender,
          ),
        ),
      );
      await tester.tap(find.byType(GestureDetector));

      // Assert
      expect(find.text('Gender'), findsOneWidget);
      expect(find.text('Male'), findsOneWidget);
      expect(find.text('Female'), findsOneWidget);
      expect(selectedGender, BmiGender.female);
    });

    testWidgets('calculate button renders and triggers callback', (tester) async {
      // Arrange
      var tapCount = 0;

      // Act
      await tester.pumpWidget(
        _TestApp(
          child: CalculateButton(
            label: 'Calculate BMI',
            scale: 1,
            onPressed: () => tapCount += 1,
          ),
        ),
      );
      await tester.tap(find.text('Calculate BMI'));

      // Assert
      expect(find.text('Calculate BMI'), findsOneWidget);
      expect(tapCount, 1);
    });
  });
}

class _TestApp extends StatelessWidget {
  const _TestApp({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      home: Scaffold(
        body: Center(
          child: SizedBox(width: 360, child: child),
        ),
      ),
    );
  }
}
