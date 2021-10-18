import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thera_rewards/data/amostra_data.dart';
import 'package:thera_rewards/modules/experiences/widgets/amostra_card.dart';
import 'package:thera_rewards/shared/dialogs/help_dialog.dart';
import 'package:thera_rewards/shared/models/amostra.dart';
import 'package:thera_rewards/shared/models/user_model.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_images.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class ExperiencesPage extends StatefulWidget {
  final UserModel user;
  const ExperiencesPage({Key? key, required this.user}) : super(key: key);

  @override
  State<ExperiencesPage> createState() => _ExperiencesPageState();
}

class _ExperiencesPageState extends State<ExperiencesPage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: AppColors.black),
          backgroundColor: AppColors.whiteSecoundary,
          title: Text(
            'Experiências Grátis',
            style: AppTextStyles.normalTextBlack.copyWith(fontSize: 20),
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
                  'https://theraskin.com.br/wp-content/uploads/2018/08/Linha_Acne-700x419.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: _size.height * .03),
              SizedBox(
                width: _size.width,
                height: _size.height * .5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Amostras grátis para você',
                        style: AppTextStyles.normalTextBlack
                            .copyWith(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: _size.width,
                      height: _size.height * .42,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: AmostraData.length,
                        itemBuilder: (BuildContext context, int index) {
                          final AmostraModel amostra = AmostraData[index];
                          return AmostraCard(amostra: amostra);
                        },
                      ),
                    ),
                  ],
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
