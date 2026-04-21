import 'package:flutter/material.dart';
import 'package:testing_assignment/core/theme/app_colors.dart';

class ValueCounterCard extends StatelessWidget {
  const ValueCounterCard({
    required this.label,
    required this.value,
    required this.scale,
    required this.onIncrement,
    required this.onDecrement,
    super.key,
  });

  final String label;
  final int value;
  final double scale;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

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
          padding: EdgeInsets.fromLTRB(_s(12), _s(10), _s(12), _s(8)),
          child: Column(
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: AppColors.textPrimary,
                  fontSize: _s(11),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: _s(2)),
              Text(
                '$value',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: AppColors.primary,
                  fontSize: _s(44),
                  height: 0.92,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _CounterButton(
                    onPressed: onDecrement,
                    scale: scale,
                    icon: const Icon(Icons.remove),
                  ),
                  SizedBox(width: _s(18)),
                  _CounterButton(
                    onPressed: onIncrement,
                    scale: scale,
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CounterButton extends StatelessWidget {
  const _CounterButton({
    required this.onPressed,
    required this.scale,
    required this.icon,
  });

  final VoidCallback onPressed;
  final double scale;
  final Icon icon;

  double _s(double value) => value * scale;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: _s(28),
      child: Material(
        color: AppColors.primaryDark,
        shape: const CircleBorder(),
        child: InkWell(
          onTap: onPressed,
          customBorder: const CircleBorder(),
          child: Center(
            child: IconTheme(
              data: IconThemeData(color: Colors.white, size: _s(16)),
              child: icon,
            ),
          ),
        ),
      ),
    );
  }
}
