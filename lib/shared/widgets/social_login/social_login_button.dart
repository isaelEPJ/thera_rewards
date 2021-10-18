import 'package:flutter/material.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_images.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 43,
        decoration: BoxDecoration(
            color: AppColors.graySecoundary.withOpacity(0.8),
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(
              BorderSide(
                color: AppColors.whitePrimary,
              ),
            )),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 33, child: Image.asset(AppImages.google)),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 56,
                      width: 1,
                      color: AppColors.whitePrimary,
                    )
                  ],
                )),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Entrar com Google",
                    style: AppTextStyles.titleListTile,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
