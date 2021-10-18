import 'package:flutter/material.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class HelpDialog extends StatelessWidget {
  const HelpDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 20,
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            primary: AppColors.primary,
            backgroundColor: AppColors.whitePrimary,
          ),
          onPressed: () => Navigator.pop(context),
          child: Text(
            'OK',
            // style: AppTextStyles.buttonBackground,
          ),
        ),
      ],
      title: Text(
        'Precisa de ajuda? entre em contato conosco por esses meios:',
        style: AppTextStyles.titleListTile,
      ),
      content: Container(
        height: MediaQuery.of(context).size.height * .3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'contato@therarewards.com.br',
              style: AppTextStyles.normalTextBlack,
            ),
            Text(
              'dev.contact@therarewards.com.br',
              style: AppTextStyles.normalTextBlack,
            ),
            Text(
              '+55 3132 0000',
              style: AppTextStyles.normalTextBlack,
            ),
            Text(
              '0800 0000 0000',
              style: AppTextStyles.normalTextBlack,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: AppColors.primary,
                backgroundColor: AppColors.whiteSecoundary,
              ),
              onPressed: () {},
              child: Text(
                'Mande uma mensagem',
                // style: AppTextStyles.buttonBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
