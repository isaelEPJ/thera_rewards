import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thera_rewards/shared/dialogs/help_dialog.dart';
import 'package:thera_rewards/shared/models/user_model.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_images.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';
import 'package:url_launcher/url_launcher.Dart';

class Scorepage extends StatelessWidget {
  final UserModel user;

  const Scorepage({Key? key, required this.user}) : super(key: key);

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
            'Meus pontos',
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
          Image.asset(
            AppImages.winners,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(user.photoURL ?? ''),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: Text(
                  'Seu score de pontos',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.titleHome.copyWith(fontSize: 22),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * .15,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 0.5, color: AppColors.primary),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Seu Score de pontosVoce tem atualmente',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.normalTextBlack.copyWith(fontSize: 14),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '15',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.titleHome.copyWith(fontSize: 22),
                        ),
                        Text(
                          ' Pontos',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.normalTextBlack
                              .copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () async {
                        await launch(
                            'Olá, compartilho minhas informaçoes do THERASKIN HAWARDS com voce, tenho 15 pontos. cadastre-se e veja a sua em: https://theraskin.com.br/hawards');
                      },
                      icon: Icon(
                        Icons.share,
                        color: AppColors.primary,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
