import 'package:flutter/material.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_images.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class ShowErrorDialog extends StatelessWidget {
  final Function() action;
  final String content;
  final String title;
  const ShowErrorDialog(
      {Key? key,
      required this.content,
      required this.action,
      required this.title})
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * .02),
            SizedBox(
              width: MediaQuery.of(context).size.width * .4,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  primary: AppColors.green.withOpacity(0.7),
                  onPrimary: AppColors.whitePrimary,
                ),
                onPressed: action,
                child: Text(
                  'Ok',
                  style: AppTextStyles.normalTextBackground,
                ),
              ),
            ),
          ],
        )
      ],
      content: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.sucessImage),
              ),
            ),
          ),
          Text(
            content,
            style: AppTextStyles.normalTextSecoundary.copyWith(fontSize: 17),
          ),
        ],
      ),
      title: Center(
        child: Text(
          title,
          style: AppTextStyles.titleHome.copyWith(fontSize: 22),
        ),
      ),
    );
  }
}
