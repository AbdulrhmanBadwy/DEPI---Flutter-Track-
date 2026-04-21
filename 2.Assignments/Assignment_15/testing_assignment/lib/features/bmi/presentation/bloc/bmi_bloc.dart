import 'package:bloc/bloc.dart';
import 'package:testing_assignment/features/bmi/data/services/bmi_service.dart';
import 'package:testing_assignment/features/bmi/presentation/bloc/bmi_event.dart';
import 'package:testing_assignment/features/bmi/presentation/bloc/bmi_state.dart';

const _minimumWeight = 1;
const _minimumAge = 1;
const _minimumHeight = 1;

class BmiBloc extends Bloc<BmiEvent, BmiState> {
  BmiBloc({required this.bmiService}) : super(const BmiState.initial()) {
    on<GenderSelected>(_onGenderSelected);
    on<HeightChanged>(_onHeightChanged);
    on<WeightIncremented>(_onWeightIncremented);
    on<WeightDecremented>(_onWeightDecremented);
    on<AgeIncremented>(_onAgeIncremented);
    on<AgeDecremented>(_onAgeDecremented);
    on<BmiCalculated>(_onBmiCalculated);
    on<BmiReset>(_onBmiReset);
  }

  final BmiService bmiService;

  void _onGenderSelected(GenderSelected event, Emitter<BmiState> emit) {
    emit(_resetResult(selectedGender: event.selectedGender));
  }

  void _onHeightChanged(HeightChanged event, Emitter<BmiState> emit) {
    if (event.height < _minimumHeight) return;

    emit(_resetResult(height: event.height));
  }

  void _onWeightIncremented(WeightIncremented event, Emitter<BmiState> emit) {
    emit(_resetResult(weight: state.weight + 1));
  }

  void _onWeightDecremented(WeightDecremented event, Emitter<BmiState> emit) {
    if (state.weight <= _minimumWeight) return;

    emit(_resetResult(weight: state.weight - 1));
  }

  void _onAgeIncremented(AgeIncremented event, Emitter<BmiState> emit) {
    emit(_resetResult(age: state.age + 1));
  }

  void _onAgeDecremented(AgeDecremented event, Emitter<BmiState> emit) {
    if (state.age <= _minimumAge) return;

    emit(_resetResult(age: state.age - 1));
  }

  void _onBmiCalculated(BmiCalculated event, Emitter<BmiState> emit) {
    if (state.status == BmiStatus.calculated) {
      emit(state.copyWith(bmiResult: null, status: BmiStatus.initial));
    }

    emit(
      state.copyWith(
        bmiResult: bmiService.calculateFullResult(
          weightKg: state.weight,
          heightCm: state.height,
        ),
        status: BmiStatus.calculated,
      ),
    );
  }

  void _onBmiReset(BmiReset event, Emitter<BmiState> emit) {
    emit(const BmiState.initial());
  }

  BmiState _resetResult({
    BmiGender? selectedGender,
    int? height,
    int? weight,
    int? age,
  }) {
    return state.copyWith(
      selectedGender: selectedGender,
      height: height,
      weight: weight,
      age: age,
      bmiResult: null,
      status: BmiStatus.initial,
    );
  }
}
