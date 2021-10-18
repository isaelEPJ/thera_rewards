import 'package:flutter/material.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_images.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class Errorpage extends StatelessWidget {
  final Function() action;
  const Errorpage({Key? key, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .3,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: MediaQuery.of(context).size.height * .2,
              child: Image.asset(AppImages.errorImage)),
          Text(
            'Ocorreu um erro.',
            style: AppTextStyles.normalTextSecoundary,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(15),
                primary: AppColors.primary),
            onPressed: action,
            child: Text(
              'Tente novamente',
              style: AppTextStyles.normalTextBackground,
            ),
          )
        ],
      ),
    );
  }
}
