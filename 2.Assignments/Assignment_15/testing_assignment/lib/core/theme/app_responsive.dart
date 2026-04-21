import 'dart:math' as math;

import 'package:flutter/widgets.dart';

class AppResponsive {
  const AppResponsive._({required this.scale, required this.contentMaxWidth});

  factory AppResponsive.of(BuildContext context, BoxConstraints constraints) {
    final mediaSize = MediaQuery.sizeOf(context);
    final width = constraints.maxWidth.isFinite
        ? constraints.maxWidth
        : mediaSize.width;
    final height = constraints.maxHeight.isFinite
        ? constraints.maxHeight
        : mediaSize.height;

    final widthScale = width / _referenceWidth;
    final heightScale = height / _referenceHeight;
    final scale = math.min(widthScale, heightScale).clamp(0.84, 1.12);

    return AppResponsive._(
      scale: scale.toDouble(),
      contentMaxWidth: math.min(width - (40 * scale), 324 * scale).toDouble(),
    );
  }

  final double scale;
  final double contentMaxWidth;

  double s(double value) => value * scale;

  double get gap => s(12);

  EdgeInsets get screenPadding =>
      EdgeInsets.fromLTRB(s(20), s(28), s(20), s(24));

  static const _referenceWidth = 393.0;
  static const _referenceHeight = 852.0;
}
