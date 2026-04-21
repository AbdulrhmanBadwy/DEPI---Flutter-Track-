import 'package:flutter/material.dart';
import 'package:testing_assignment/core/theme/app_colors.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    required this.label,
    required this.scale,
    required this.onPressed,
    super.key,
  });

  final String label;
  final double scale;
  final VoidCallback onPressed;

  double _s(double value) => value * scale;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _s(56),
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: AppColors.primaryGradient,
          borderRadius: BorderRadius.circular(_s(28)),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(_s(28)),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: _s(13),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
