import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_assignment/app/bmi_app.dart';
import 'package:testing_assignment/core/theme/app_theme.dart';
import 'package:testing_assignment/features/bmi/data/services/bmi_service.dart';
import 'package:testing_assignment/features/bmi/presentation/bloc/bmi_bloc.dart';
import 'package:testing_assignment/features/bmi/presentation/pages/bmi_result_screen.dart';
import 'package:testing_assignment/features/bmi/presentation/pages/bmi_screen.dart';

void main() {
  group('BMI screens', () {
    testWidgets('input screen renders correctly', (tester) async {
      // Arrange
      final bloc = BmiBloc(bmiService: const BmiService());

      // Act
      await tester.pumpWidget(_BlocTestApp(bloc: bloc, child: const BmiScreen()));

      // Assert
      expect(find.text('BMI CALCULATOR'), findsOneWidget);
      expect(find.text('Age'), findsOneWidget);
      expect(find.text('Weight (KG)'), findsOneWidget);
      expect(find.text('Height (CM)'), findsOneWidget);
      expect(find.text('Gender'), findsOneWidget);
      expect(find.text('Calculate BMI'), findsOneWidget);

      await bloc.close();
    });

    testWidgets('result screen renders correctly', (tester) async {
      // Arrange
      final bloc = BmiBloc(bmiService: const BmiService());

      // Act
      await tester.pumpWidget(
        _BlocTestApp(bloc: bloc, child: const BmiResultScreen()),
      );

      // Assert
      expect(find.text('BMI CALCULATOR'), findsOneWidget);
      expect(find.text('Body Mass Index'), findsOneWidget);
      expect(find.text('BMI Results'), findsOneWidget);
      expect(find.text('Save the results'), findsOneWidget);

      await bloc.close();
    });

    testWidgets('plus and minus buttons update input screen UI', (tester) async {
      // Arrange
      final bloc = BmiBloc(bmiService: const BmiService());

      // Act
      await tester.pumpWidget(_BlocTestApp(bloc: bloc, child: const BmiScreen()));
      await tester.tap(find.byIcon(Icons.add).first);
      await tester.pump();
      await tester.tap(find.byIcon(Icons.remove).first);
      await tester.pump();

      // Assert
      expect(find.text('26'), findsNothing);
      expect(find.text('25'), findsOneWidget);

      await bloc.close();
    });

    testWidgets('slider interaction updates height value', (tester) async {
      // Arrange
      final bloc = BmiBloc(bmiService: const BmiService());

      // Act
      await tester.pumpWidget(_BlocTestApp(bloc: bloc, child: const BmiScreen()));
      await tester.drag(find.byType(Slider), const Offset(80, 0));
      await tester.pump();

      // Assert
      expect(find.text('170'), findsNothing);

      await bloc.close();
    });

    testWidgets('navigation to result screen works', (tester) async {
      // Arrange
      await tester.pumpWidget(const BmiApp());

      // Act
      await tester.tap(find.text('Calculate BMI'));
      await tester.pumpAndSettle();

      // Assert
      expect(find.text('Body Mass Index'), findsOneWidget);
      expect(find.text('BMI Results'), findsOneWidget);
      expect(find.text('Save the results'), findsOneWidget);
    });
  });
}

class _BlocTestApp extends StatelessWidget {
  const _BlocTestApp({required this.bloc, required this.child});

  final BmiBloc bloc;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      home: BlocProvider.value(value: bloc, child: child),
    );
  }
}
