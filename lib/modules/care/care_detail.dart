import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thera_rewards/shared/dialogs/help_dialog.dart';
import 'package:thera_rewards/shared/models/care_model.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class CareDetail extends StatelessWidget {
  final CareModel care;
  const CareDetail({Key? key, required this.care}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.black),
        backgroundColor: AppColors.whiteSecoundary,
        title: Text(
          care.name,
          style: AppTextStyles.normalTextBlack.copyWith(fontSize: 22),
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
      body: Container(
        height: _size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: _size.width,
                height: _size.height * .5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(care.imageUrl),
                  ),
                ),
              ),
              Container(
                width: _size.width,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(),
                child: Text(
                  care.name,
                  textAlign: TextAlign.start,
                  style: AppTextStyles.titleListTile.copyWith(fontSize: 22),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: Text(
                  care.description,
                  textAlign: TextAlign.start,
                  style: AppTextStyles.normalTextBlack.copyWith(fontSize: 18),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: Text(
                  care.observation,
                  textAlign: TextAlign.start,
                  style: AppTextStyles.normalTextBlack.copyWith(fontSize: 18),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: Text(
                  care.tips,
                  textAlign: TextAlign.start,
                  style: AppTextStyles.normalTextBlack.copyWith(fontSize: 18),
                ),
              ),
              Container(
                width: _size.width,
                padding: const EdgeInsets.all(15),
                color: AppColors.primaryLight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.star_fill),
                    Container(
                      width: _size.width * .02,
                    ),
                    Text(
                      'Avalie nosso aplicativo',
                      textAlign: TextAlign.start,
                      style: AppTextStyles.normalTextBackground
                          .copyWith(fontSize: 20, color: AppColors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
