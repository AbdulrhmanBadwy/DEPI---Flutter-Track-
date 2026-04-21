import 'package:testing_assignment/features/bmi/domain/models/bmi_result.dart';

class BmiService {
  const BmiService();

  double calculateBmi({required int heightCm, required int weightKg}) {
    if (heightCm <= 0) {
      throw ArgumentError.value(heightCm, 'heightCm', 'must be greater than 0');
    }

    if (weightKg <= 0) {
      throw ArgumentError.value(weightKg, 'weightKg', 'must be greater than 0');
    }

    final heightM = heightCm / 100;
    return weightKg / (heightM * heightM);
  }

  String getBmiCategory(double bmi) {
    if (bmi < 18.5) return 'Underweight';
    if (bmi < 25) return 'Normal';
    if (bmi < 30) return 'Overweight';
    return 'Obese';
  }

  String getInterpretation(double bmi) {
    if (bmi < 18.5) {
      return 'You have a lower than normal body weight.';
    }

    if (bmi < 25) {
      return 'You have a normal body weight.';
    }

    if (bmi < 30) {
      return 'You have a higher than normal body weight.';
    }

    return 'Your body weight is in the obese range.';
  }

  BmiResult calculateFullResult({
    required int heightCm,
    required int weightKg,
  }) {
    final bmi = calculateBmi(heightCm: heightCm, weightKg: weightKg);

    return BmiResult(
      bmiValue: bmi,
      category: getBmiCategory(bmi),
      interpretation: getInterpretation(bmi),
    );
  }
}
