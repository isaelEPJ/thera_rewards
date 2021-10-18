import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thera_rewards/data/products_data.dart';
import 'package:thera_rewards/modules/promotions/product_card.dart';
import 'package:thera_rewards/shared/dialogs/help_dialog.dart';
import 'package:thera_rewards/shared/models/products_model.dart';
import 'package:thera_rewards/shared/models/user_model.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_images.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class PromotionsPage extends StatefulWidget {
  final UserModel user;
  const PromotionsPage({Key? key, required this.user}) : super(key: key);

  @override
  State<PromotionsPage> createState() => _PromotionsPageState();
}

class _PromotionsPageState extends State<PromotionsPage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: AppColors.black),
          backgroundColor: AppColors.whiteSecoundary,
          title: Text(
            'Promoçoes e Descontos',
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
                  'https://theraskin.com.br/wp-content/uploads/2021/07/Banner-2021-06-Euryale.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                width: _size.width,
                height: _size.height * .5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Produtos Com desconto pra você',
                        style: AppTextStyles.normalTextBlack
                            .copyWith(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: _size.width,
                      height: _size.height * .4,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: ProductData.length,
                        itemBuilder: (BuildContext context, int index) {
                          final ProductModel product = ProductData[index];
                          return ProductCard(product: product);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: _size.height * .4,
                // padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.bannerpromotion2),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
