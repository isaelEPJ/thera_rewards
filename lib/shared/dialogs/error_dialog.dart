import 'package:flutter/material.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class ShowErrorDialog extends StatelessWidget {
  final Function() action;
  final String content;
  const ShowErrorDialog({Key? key, required this.content, required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      insetPadding: const EdgeInsets.symmetric(horizontal: 15),
      contentPadding: const EdgeInsets.all(30),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .4,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  primary: AppColors.graySecoundary.withOpacity(0.7),
                  onPrimary: AppColors.whiteSecoundary,
                ),
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Cancelar',
                  style: AppTextStyles.normalTextBackground,
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * .02),
            SizedBox(
              width: MediaQuery.of(context).size.width * .4,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  primary: AppColors.red.withOpacity(0.7),
                  onPrimary: AppColors.whitePrimary,
                ),
                onPressed: action,
                child: Text(
                  'Remover',
                  style: AppTextStyles.normalTextBackground,
                ),
              ),
            ),
          ],
        )
      ],
      content: Text(
        content,
        style: AppTextStyles.normalTextSecoundary.copyWith(fontSize: 17),
      ),
      title: Center(
        child: Text(
          'Confirmação',
          style: AppTextStyles.titleHome.copyWith(fontSize: 22),
        ),
      ),
    );
  }
}
