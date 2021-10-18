import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thera_rewards/shared/dialogs/help_dialog.dart';
import 'package:thera_rewards/shared/models/user_model.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_images.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class FavoritesPage extends StatelessWidget {
  final UserModel user;

  const FavoritesPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteSecoundary,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.black),
        backgroundColor: AppColors.whitePrimary,
        title: Center(
          child: Text(
            'Meus Favoritos',
            style: AppTextStyles.normalTextBlack.copyWith(fontSize: 22),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => HelpDialog(),
                  ),
              icon: Icon(CupertinoIcons.exclamationmark_circle))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .35,
            child: Image.asset(
              AppImages.favorites,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Text(
              'Seus Favoritos',
              textAlign: TextAlign.center,
              style: AppTextStyles.titleHome.copyWith(fontSize: 22),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sua lista de favoritos está vazia',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.normalTextBlack.copyWith(fontSize: 18),
                ),
                Icon(Icons.hourglass_empty_rounded)
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .15,
            alignment: Alignment.center,
            child: Center(
              child: CircularProgressIndicator(
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
