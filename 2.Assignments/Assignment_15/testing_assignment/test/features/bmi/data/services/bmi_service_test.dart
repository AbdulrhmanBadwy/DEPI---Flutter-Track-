import 'package:flutter_test/flutter_test.dart';
import 'package:testing_assignment/features/bmi/data/services/bmi_service.dart';

void main() {
  group('BmiService', () {
    const service = BmiService();

    test('calculateBmi returns a valid BMI value', () {
      // Arrange
      const heightCm = 175;
      const weightKg = 78;

      // Act
      final bmi = service.calculateBmi(heightCm: heightCm, weightKg: weightKg);

      // Assert
      expect(bmi, closeTo(25.47, 0.01));
    });

    test('getBmiCategory returns Underweight for bmi below 18.5', () {
      // Arrange
      const bmi = 18.4;

      // Act
      final category = service.getBmiCategory(bmi);

      // Assert
      expect(category, 'Underweight');
    });

    test('getBmiCategory returns Normal for bmi from 18.5 to 24.9', () {
      // Arrange
      const bmi = 24.9;

      // Act
      final category = service.getBmiCategory(bmi);

      // Assert
      expect(category, 'Normal');
    });

    test('getBmiCategory returns Overweight for bmi from 25 to 29.9', () {
      // Arrange
      const bmi = 29.9;

      // Act
      final category = service.getBmiCategory(bmi);

      // Assert
      expect(category, 'Overweight');
    });

    test('getBmiCategory returns Obese for bmi 30 and above', () {
      // Arrange
      const bmi = 30.0;

      // Act
      final category = service.getBmiCategory(bmi);

      // Assert
      expect(category, 'Obese');
    });

    test('getInterpretation returns underweight interpretation', () {
      // Arrange
      const bmi = 18.4;

      // Act
      final interpretation = service.getInterpretation(bmi);

      // Assert
      expect(interpretation, 'You have a lower than normal body weight.');
    });

    test('getInterpretation returns normal interpretation', () {
      // Arrange
      const bmi = 22.0;

      // Act
      final interpretation = service.getInterpretation(bmi);

      // Assert
      expect(interpretation, 'You have a normal body weight.');
    });

    test('getInterpretation returns overweight interpretation', () {
      // Arrange
      const bmi = 27.0;

      // Act
      final interpretation = service.getInterpretation(bmi);

      // Assert
      expect(interpretation, 'You have a higher than normal body weight.');
    });

    test('getInterpretation returns obese interpretation', () {
      // Arrange
      const bmi = 31.0;

      // Act
      final interpretation = service.getInterpretation(bmi);

      // Assert
      expect(interpretation, 'Your body weight is in the obese range.');
    });

    test('calculateFullResult returns value, category, and interpretation', () {
      // Arrange
      const heightCm = 175;
      const weightKg = 78;

      // Act
      final result = service.calculateFullResult(
        heightCm: heightCm,
        weightKg: weightKg,
      );

      // Assert
      expect(result.bmiValue, closeTo(25.47, 0.01));
      expect(result.category, 'Overweight');
      expect(result.interpretation, 'You have a higher than normal body weight.');
    });

    test('calculateBmi throws for zero height', () {
      // Arrange
      const heightCm = 0;
      const weightKg = 70;

      // Act
      double act() => service.calculateBmi(
        heightCm: heightCm,
        weightKg: weightKg,
      );

      // Assert
      expect(act, throwsArgumentError);
    });

    test('calculateBmi throws for negative height', () {
      // Arrange
      const heightCm = -170;
      const weightKg = 70;

      // Act
      double act() => service.calculateBmi(
        heightCm: heightCm,
        weightKg: weightKg,
      );

      // Assert
      expect(act, throwsArgumentError);
    });

    test('calculateBmi throws for zero weight', () {
      // Arrange
      const heightCm = 170;
      const weightKg = 0;

      // Act
      double act() => service.calculateBmi(
        heightCm: heightCm,
        weightKg: weightKg,
      );

      // Assert
      expect(act, throwsArgumentError);
    });

    test('calculateBmi throws for negative weight', () {
      // Arrange
      const heightCm = 170;
      const weightKg = -70;

      // Act
      double act() => service.calculateBmi(
        heightCm: heightCm,
        weightKg: weightKg,
      );

      // Assert
      expect(act, throwsArgumentError);
    });
  });
}
