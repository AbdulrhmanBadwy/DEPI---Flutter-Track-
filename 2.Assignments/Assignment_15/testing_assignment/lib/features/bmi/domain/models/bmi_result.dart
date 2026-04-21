import 'package:equatable/equatable.dart';

class BmiResult extends Equatable {
  const BmiResult({
    required this.bmiValue,
    required this.category,
    required this.interpretation,
  });

  final double bmiValue;
  final String category;
  final String interpretation;

  @override
  List<Object?> get props => [bmiValue, category, interpretation];
}
