import 'package:flutter/material.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class Modalprofile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() action;
  final Color appcolors;
  const Modalprofile(
      {Key? key,
      required this.title,
      required this.icon,
      required this.action,
      required this.appcolors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Container(
      width: _size.width * .44,
      height: _size.height * .2,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          primary: AppColors.whiteSecoundary.withOpacity(0.9),
          elevation: 0,
        ),
        onPressed: action,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              size: 35,
              color: appcolors,
            ),
            SizedBox(
              width: _size.width * .03,
            ),
            Text(
              title,
              style: AppTextStyles.titleListTile.copyWith(color: appcolors),
            ),
          ],
        ),
      ),
    );
  }
}
