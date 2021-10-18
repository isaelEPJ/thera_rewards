import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thera_rewards/shared/dialogs/help_dialog.dart';
import 'package:thera_rewards/shared/models/amostra.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_images.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class AmostraPage extends StatelessWidget {
  final AmostraModel amostra;
  const AmostraPage({Key? key, required this.amostra}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.black),
        backgroundColor: AppColors.whiteSecoundary,
        title: Text(
          amostra.name,
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
                height: _size.height * .01,
              ),
              Container(
                width: _size.width,
                height: _size.height * .35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(amostra.imageUrl),
                  ),
                ),
              ),
              Container(
                width: _size.width,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(),
                child: Text(
                  amostra.name,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: AppTextStyles.titleListTile.copyWith(fontSize: 22),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: Text(
                  amostra.description,
                  textAlign: TextAlign.start,
                  style: AppTextStyles.normalTextBlack.copyWith(fontSize: 18),
                ),
              ),
              Divider(),
              Container(
                padding: const EdgeInsets.all(15),
                child: Text(
                  amostra.observation,
                  textAlign: TextAlign.start,
                  style: AppTextStyles.normalTextBlack.copyWith(fontSize: 18),
                ),
              ),
              Divider(),
              SizedBox(
                width: _size.width,
                height: _size.height * .3,
                child: Image.asset(
                  AppImages.maps,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
