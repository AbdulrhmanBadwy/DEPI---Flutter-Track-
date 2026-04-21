import 'package:flutter/material.dart';
import 'package:testing_assignment/core/theme/app_colors.dart';

class HeightSliderCard extends StatelessWidget {
  const HeightSliderCard({
    required this.value,
    required this.onChanged,
    required this.scale,
    this.min = 50,
    this.max = 300,
    super.key,
  });

  final double value;
  final ValueChanged<double> onChanged;
  final double scale;
  final double min;
  final double max;

  double _s(double value) => value * scale;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_s(18)),
      ),
      child: SizedBox(
        height: _s(140),
        child: Padding(
          padding: EdgeInsets.fromLTRB(_s(18), _s(12), _s(18), _s(12)),
          child: Column(
            children: [
              Text(
                'Height (CM)',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: AppColors.textPrimary,
                  fontSize: _s(11),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: _s(2)),
              Text(
                '${value.round()}',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: AppColors.primary,
                  fontSize: _s(44),
                  height: 0.95,
                ),
              ),
              SizedBox(height: _s(2)),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: AppColors.primary,
                  inactiveTrackColor: AppColors.track,
                  thumbColor: AppColors.primary,
                  trackHeight: _s(6),
                  overlayShape: SliderComponentShape.noOverlay,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: _s(8)),
                ),
                child: Slider(
                  min: min,
                  max: max,
                  value: value.clamp(min, max).toDouble(),
                  onChanged: onChanged,
                ),
              ),
              Transform.translate(
                offset: Offset(0, _s(-5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${min.round()} cm', style: _rangeStyle(scale)),
                    Text('${max.round()}cm', style: _rangeStyle(scale)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

TextStyle _rangeStyle(double scale) {
  return TextStyle(
    color: AppColors.textSecondary,
    fontSize: 9 * scale,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );
}
