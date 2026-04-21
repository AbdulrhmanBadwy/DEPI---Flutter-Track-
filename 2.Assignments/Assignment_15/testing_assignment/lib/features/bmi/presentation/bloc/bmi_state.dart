import 'package:equatable/equatable.dart';
import 'package:testing_assignment/features/bmi/domain/models/bmi_result.dart';

enum BmiGender { male, female }

enum BmiStatus { initial, calculated }

const _unset = Object();

class BmiState extends Equatable {
  const BmiState({
    required this.selectedGender,
    required this.height,
    required this.weight,
    required this.age,
    required this.status,
    this.bmiResult,
  });

  const BmiState.initial()
    : selectedGender = BmiGender.male,
      height = 170,
      weight = 70,
      age = 25,
      bmiResult = null,
      status = BmiStatus.initial;

  final BmiGender selectedGender;
  final int height;
  final int weight;
  final int age;
  final BmiResult? bmiResult;
  final BmiStatus status;

  BmiState copyWith({
    BmiGender? selectedGender,
    int? height,
    int? weight,
    int? age,
    Object? bmiResult = _unset,
    BmiStatus? status,
  }) {
    return BmiState(
      selectedGender: selectedGender ?? this.selectedGender,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      age: age ?? this.age,
      bmiResult: bmiResult == _unset ? this.bmiResult : bmiResult as BmiResult?,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
    selectedGender,
    height,
    weight,
    age,
    bmiResult,
    status,
  ];
}
