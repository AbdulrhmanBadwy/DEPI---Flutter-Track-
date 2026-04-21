import 'package:equatable/equatable.dart';
import 'package:testing_assignment/features/bmi/presentation/bloc/bmi_state.dart';

sealed class BmiEvent extends Equatable {
  const BmiEvent();

  @override
  List<Object?> get props => [];
}

final class GenderSelected extends BmiEvent {
  const GenderSelected(this.selectedGender);

  final BmiGender selectedGender;

  @override
  List<Object?> get props => [selectedGender];
}

final class HeightChanged extends BmiEvent {
  const HeightChanged(this.height);

  final int height;

  @override
  List<Object?> get props => [height];
}

final class WeightIncremented extends BmiEvent {
  const WeightIncremented();
}

final class WeightDecremented extends BmiEvent {
  const WeightDecremented();
}

final class AgeIncremented extends BmiEvent {
  const AgeIncremented();
}

final class AgeDecremented extends BmiEvent {
  const AgeDecremented();
}

final class BmiCalculated extends BmiEvent {
  const BmiCalculated();
}

final class BmiReset extends BmiEvent {
  const BmiReset();
}
