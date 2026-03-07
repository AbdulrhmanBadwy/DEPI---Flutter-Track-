import 'package:finance/core/styling/app_assets.dart';
import 'package:flutter/material.dart';

import 'custom_icon_button.dart';

class CustomSocialLoginButton extends StatelessWidget {
  const CustomSocialLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(iconPath: AppAssets.faceBookSVGIcon ,),
        CustomIconButton(iconPath: AppAssets.googleSVGIcon),
        CustomIconButton(iconPath: AppAssets.appleSVGIcon),
      ],
    );
  }
}
