import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thera_rewards/data/amostra_data.dart';
import 'package:thera_rewards/data/care_data.dart';
import 'package:thera_rewards/data/products_data.dart';
import 'package:thera_rewards/modules/care/care_card.dart';
import 'package:thera_rewards/modules/promotions/product_card.dart';
import 'package:thera_rewards/shared/dialogs/help_dialog.dart';
import 'package:thera_rewards/shared/models/amostra.dart';
import 'package:thera_rewards/shared/models/care_model.dart';
import 'package:thera_rewards/shared/models/products_model.dart';
import 'package:thera_rewards/shared/models/user_model.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_images.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class CarePage extends StatefulWidget {
  final UserModel user;
  const CarePage({Key? key, required this.user}) : super(key: key);

  @override
  State<CarePage> createState() => _CarePageState();
}

class _CarePageState extends State<CarePage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors.black),
          backgroundColor: AppColors.whiteSecoundary,
          title: Text(
            'Dicas & Cuidados',
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: _size.width,
                height: _size.height * .3,
                child: Image.network(
                  'https://theraskin.com.br/wp-content/uploads/2018/08/TH_004_Banners_Home_2_v2-700x419.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: _size.height * .62,
                child: ListView.builder(
                  itemCount: CareData.length,
                  itemBuilder: (BuildContext context, int index) {
                    final CareModel careContent = CareData[index];
                    return CareCard(care: careContent);
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppImages.bannerpromotion))),
              ),
            ],
          ),
        ));
  }
}
