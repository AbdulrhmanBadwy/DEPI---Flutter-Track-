import 'package:flutter/material.dart';
import 'package:testing_assignment/core/theme/app_colors.dart';
import 'package:testing_assignment/features/bmi/presentation/bloc/bmi_state.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    required this.selectedGender,
    required this.scale,
    required this.onChanged,
    super.key,
  });

  final BmiGender selectedGender;
  final double scale;
  final ValueChanged<BmiGender> onChanged;

  double _s(double value) => value * scale;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_s(18)),
      ),
      child: SizedBox(
        height: _s(110),
        child: Padding(
          padding: EdgeInsets.fromLTRB(_s(18), _s(14), _s(18), _s(13)),
          child: Column(
            children: [
              Text(
                'Gender',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: AppColors.textPrimary,
                  fontSize: _s(11),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Male', style: _labelStyle(scale)),
                  SizedBox(width: _s(10)),
                  _GenderToggle(
                    selectedGender: selectedGender,
                    scale: scale,
                    onChanged: onChanged,
                  ),
                  SizedBox(width: _s(10)),
                  Text('Female', style: _labelStyle(scale)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _GenderToggle extends StatelessWidget {
  const _GenderToggle({
    required this.selectedGender,
    required this.scale,
    required this.onChanged,
  });

  final BmiGender selectedGender;
  final double scale;
  final ValueChanged<BmiGender> onChanged;

  double _s(double value) => value * scale;

  @override
  Widget build(BuildContext context) {
    final isFemale = selectedGender == BmiGender.female;

    return GestureDetector(
      onTap: () {
        onChanged(isFemale ? BmiGender.male : BmiGender.female);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        width: _s(82),
        height: _s(26),
        padding: EdgeInsets.all(_s(3)),
        decoration: BoxDecoration(
          color: AppColors.toggleBackground,
          borderRadius: BorderRadius.circular(_s(30)),
        ),
        alignment: isFemale ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          width: _s(22),
          height: _s(22),
          decoration: const BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

TextStyle _labelStyle(double scale) {
  return TextStyle(
    color: AppColors.textPrimary,
    fontSize: 13 * scale,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );
}
