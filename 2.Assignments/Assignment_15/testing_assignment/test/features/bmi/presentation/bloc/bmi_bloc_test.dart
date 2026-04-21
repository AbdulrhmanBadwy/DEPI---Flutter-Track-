import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_assignment/features/bmi/data/services/bmi_service.dart';
import 'package:testing_assignment/features/bmi/domain/models/bmi_result.dart';
import 'package:testing_assignment/features/bmi/presentation/bloc/bmi_bloc.dart';
import 'package:testing_assignment/features/bmi/presentation/bloc/bmi_event.dart';
import 'package:testing_assignment/features/bmi/presentation/bloc/bmi_state.dart';

class TrackingBmiService extends BmiService {
  TrackingBmiService({this.result = testResult});

  final BmiResult result;
  int callCount = 0;
  int? lastHeightCm;
  int? lastWeightKg;

  @override
  BmiResult calculateFullResult({
    required int heightCm,
    required int weightKg,
  }) {
    callCount += 1;
    lastHeightCm = heightCm;
    lastWeightKg = weightKg;
    return result;
  }
}

const testResult = BmiResult(
  bmiValue: 22.5,
  category: 'Normal',
  interpretation: 'You have a normal body weight.',
);

void main() {
  group('BmiBloc', () {
    test('initial state uses default BMI inputs', () {
      // Arrange
      final service = TrackingBmiService();

      // Act
      final bloc = BmiBloc(bmiService: service);

      // Assert
      expect(bloc.state, const BmiState.initial());
      bloc.close();
    });

    blocTest<BmiBloc, BmiState>(
      'GenderSelected updates selectedGender',
      build: () {
        // Arrange
        return BmiBloc(bmiService: TrackingBmiService());
      },
      act: (bloc) {
        // Act
        bloc.add(const GenderSelected(BmiGender.female));
      },
      expect: () {
        // Assert
        return [
          const BmiState.initial().copyWith(
            selectedGender: BmiGender.female,
            bmiResult: null,
            status: BmiStatus.initial,
          ),
        ];
      },
    );

    blocTest<BmiBloc, BmiState>(
      'HeightChanged updates height and resets bmiResult/status',
      build: () {
        // Arrange
        return BmiBloc(bmiService: TrackingBmiService());
      },
      seed: () => const BmiState.initial().copyWith(
        bmiResult: testResult,
        status: BmiStatus.calculated,
      ),
      act: (bloc) {
        // Act
        bloc.add(const HeightChanged(180));
      },
      expect: () {
        // Assert
        return [
          const BmiState.initial().copyWith(
            height: 180,
            bmiResult: null,
            status: BmiStatus.initial,
          ),
        ];
      },
    );

    blocTest<BmiBloc, BmiState>(
      'WeightIncremented increases weight',
      build: () {
        // Arrange
        return BmiBloc(bmiService: TrackingBmiService());
      },
      act: (bloc) {
        // Act
        bloc.add(const WeightIncremented());
      },
      expect: () {
        // Assert
        return [const BmiState.initial().copyWith(weight: 71)];
      },
    );

    blocTest<BmiBloc, BmiState>(
      'WeightDecremented does not go below minimum',
      build: () {
        // Arrange
        return BmiBloc(bmiService: TrackingBmiService());
      },
      seed: () => const BmiState.initial().copyWith(weight: 1),
      act: (bloc) {
        // Act
        bloc.add(const WeightDecremented());
      },
      expect: () {
        // Assert
        return <BmiState>[];
      },
    );

    blocTest<BmiBloc, BmiState>(
      'AgeIncremented increases age',
      build: () {
        // Arrange
        return BmiBloc(bmiService: TrackingBmiService());
      },
      act: (bloc) {
        // Act
        bloc.add(const AgeIncremented());
      },
      expect: () {
        // Assert
        return [const BmiState.initial().copyWith(age: 26)];
      },
    );

    blocTest<BmiBloc, BmiState>(
      'AgeDecremented does not go below minimum',
      build: () {
        // Arrange
        return BmiBloc(bmiService: TrackingBmiService());
      },
      seed: () => const BmiState.initial().copyWith(age: 1),
      act: (bloc) {
        // Act
        bloc.add(const AgeDecremented());
      },
      expect: () {
        // Assert
        return <BmiState>[];
      },
    );

    blocTest<BmiBloc, BmiState>(
      'BmiCalculated calls BmiService and emits calculated result',
      build: () {
        // Arrange
        return BmiBloc(bmiService: TrackingBmiService());
      },
      act: (bloc) {
        // Act
        bloc.add(const BmiCalculated());
      },
      expect: () {
        // Assert
        return [
          const BmiState.initial().copyWith(
            bmiResult: testResult,
            status: BmiStatus.calculated,
          ),
        ];
      },
      verify: (bloc) {
        // Assert
        final service = bloc.bmiService as TrackingBmiService;
        expect(service.callCount, 1);
        expect(service.lastHeightCm, 170);
        expect(service.lastWeightKg, 70);
      },
    );

    blocTest<BmiBloc, BmiState>(
      'BmiReset clears bmiResult and resets status',
      build: () {
        // Arrange
        return BmiBloc(bmiService: TrackingBmiService());
      },
      seed: () => const BmiState.initial().copyWith(
        selectedGender: BmiGender.female,
        height: 180,
        weight: 80,
        age: 30,
        bmiResult: testResult,
        status: BmiStatus.calculated,
      ),
      act: (bloc) {
        // Act
        bloc.add(const BmiReset());
      },
      expect: () {
        // Assert
        return [const BmiState.initial()];
      },
    );
  });
}
