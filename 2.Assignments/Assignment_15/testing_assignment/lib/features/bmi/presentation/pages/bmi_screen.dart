import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_assignment/core/theme/app_colors.dart';
import 'package:testing_assignment/core/theme/app_responsive.dart';
import 'package:testing_assignment/features/bmi/presentation/bloc/bmi_bloc.dart';
import 'package:testing_assignment/features/bmi/presentation/bloc/bmi_event.dart';
import 'package:testing_assignment/features/bmi/presentation/bloc/bmi_state.dart';
import 'package:testing_assignment/features/bmi/presentation/pages/bmi_result_screen.dart';
import 'package:testing_assignment/features/bmi/presentation/widgets/calculate_button.dart';
import 'package:testing_assignment/features/bmi/presentation/widgets/gender_card.dart';
import 'package:testing_assignment/features/bmi/presentation/widgets/height_slider_card.dart';
import 'package:testing_assignment/features/bmi/presentation/widgets/value_counter_card.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final sizes = AppResponsive.of(context, constraints);
            final sectionGap = sizes.s(20);

            return BlocListener<BmiBloc, BmiState>(
              listenWhen: (previous, current) =>
                  previous.status != current.status &&
                  current.status == BmiStatus.calculated,
              listener: (context, state) {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (_) => BlocProvider.value(
                      value: context.read<BmiBloc>(),
                      child: const BmiResultScreen(),
                    ),
                  ),
                );
              },
              child: Padding(
                padding: sizes.screenPadding,
                child: Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: sizes.contentMaxWidth,
                    ),
                    child: BlocBuilder<BmiBloc, BmiState>(
                      builder: (context, state) {
                        return Column(
                          children: [
                            Text(
                              'BMI CALCULATOR',
                              style: _screenTitleStyle(sizes.scale),
                            ),
                            SizedBox(height: sectionGap),
                            Row(
                              children: [
                                Expanded(
                                  child: ValueCounterCard(
                                    label: 'Age',
                                    value: state.age,
                                    scale: sizes.scale,
                                    onIncrement: () {
                                      context.read<BmiBloc>().add(
                                        const AgeIncremented(),
                                      );
                                    },
                                    onDecrement: () {
                                      context.read<BmiBloc>().add(
                                        const AgeDecremented(),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(width: sizes.s(14)),
                                Expanded(
                                  child: ValueCounterCard(
                                    label: 'Weight (KG)',
                                    value: state.weight,
                                    scale: sizes.scale,
                                    onIncrement: () {
                                      context.read<BmiBloc>().add(
                                        const WeightIncremented(),
                                      );
                                    },
                                    onDecrement: () {
                                      context.read<BmiBloc>().add(
                                        const WeightDecremented(),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: sectionGap),
                            HeightSliderCard(
                              value: state.height.toDouble(),
                              scale: sizes.scale,
                              onChanged: (value) {
                                context.read<BmiBloc>().add(
                                  HeightChanged(value.round()),
                                );
                              },
                            ),
                            SizedBox(height: sectionGap),
                            GenderCard(
                              selectedGender: state.selectedGender,
                              scale: sizes.scale,
                              onChanged: (gender) {
                                context.read<BmiBloc>().add(
                                  GenderSelected(gender),
                                );
                              },
                            ),
                            const Spacer(),
                            CalculateButton(
                              label: 'Calculate BMI',
                              scale: sizes.scale,
                              onPressed: () {
                                context.read<BmiBloc>().add(
                                  const BmiCalculated(),
                                );
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

TextStyle _screenTitleStyle(double scale) {
  return TextStyle(
    color: AppColors.textPrimary,
    fontSize: 12 * scale,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
  );
}
