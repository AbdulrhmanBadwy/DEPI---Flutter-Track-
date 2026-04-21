import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_assignment/core/theme/app_colors.dart';
import 'package:testing_assignment/core/theme/app_responsive.dart';
import 'package:testing_assignment/features/bmi/presentation/bloc/bmi_bloc.dart';
import 'package:testing_assignment/features/bmi/presentation/bloc/bmi_state.dart';
import 'package:testing_assignment/features/bmi/presentation/widgets/calculate_button.dart';

class BmiResultScreen extends StatelessWidget {
  const BmiResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final sizes = AppResponsive.of(context, constraints);

            return Padding(
              padding: sizes.screenPadding,
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: sizes.contentMaxWidth),
                  child: BlocBuilder<BmiBloc, BmiState>(
                    builder: (context, state) {
                      final result = state.bmiResult;

                      return Column(
                        children: [
                          Text(
                            'BMI CALCULATOR',
                            style: _screenTitleStyle(sizes.scale),
                          ),
                          SizedBox(height: sizes.s(38)),
                          Text(
                            'Body Mass Index',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontSize: sizes.s(20)),
                          ),
                          SizedBox(height: sizes.s(22)),
                          Expanded(
                            child: Center(
                              child: _ResultCard(
                                bmiValue: result?.bmiValue,
                                category: result?.category ?? '',
                                scale: sizes.scale,
                              ),
                            ),
                          ),
                          CalculateButton(
                            label: 'Save the results',
                            scale: sizes.scale,
                            onPressed: () {},
                          ),
                        ],
                      );
                    },
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

class _ResultCard extends StatelessWidget {
  const _ResultCard({
    required this.bmiValue,
    required this.category,
    required this.scale,
  });

  final double? bmiValue;
  final String category;
  final double scale;

  double _s(double value) => value * scale;

  @override
  Widget build(BuildContext context) {
    final bmiText = bmiValue == null ? '--' : bmiValue!.toStringAsFixed(1);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_s(18)),
      ),
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(minHeight: _s(286)),
        padding: EdgeInsets.fromLTRB(_s(28), _s(36), _s(28), _s(30)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'BMI Results',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: _s(24),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: _s(18)),
            _BmiValueText(value: bmiText, scale: scale),
            SizedBox(height: _s(18)),
            Text(
              category.isEmpty ? 'BMI' : '${category.toUpperCase()} BMI',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: _s(16),
                fontWeight: FontWeight.w600,
                letterSpacing: 0,
              ),
            ),
            SizedBox(height: _s(14)),
            Text(
              'Underweight: BMI less than 18.5\n'
              'Normal weight: BMI 18.5 to 24.9\n'
              'Overweight: BMI 25 to 29.9\n'
              'Obesity: 30 to 40',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: _s(11),
                fontWeight: FontWeight.w500,
                height: 1.45,
                letterSpacing: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BmiValueText extends StatelessWidget {
  const _BmiValueText({required this.value, required this.scale});

  final String value;
  final double scale;

  double _s(double value) => value * scale;

  @override
  Widget build(BuildContext context) {
    final parts = value.split('.');

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
          color: AppColors.primary,
          fontSize: _s(72),
          fontWeight: FontWeight.w700,
          height: 0.9,
        ),
        children: [
          TextSpan(text: parts.first),
          if (parts.length > 1)
            TextSpan(
              text: '.${parts.last}',
              style: TextStyle(fontSize: _s(26), fontWeight: FontWeight.w500),
            ),
        ],
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
