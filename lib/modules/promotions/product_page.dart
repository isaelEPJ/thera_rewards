import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thera_rewards/shared/dialogs/help_dialog.dart';
import 'package:thera_rewards/shared/models/products_model.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_images.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class ProductPage extends StatelessWidget {
  final ProductModel product;
  const ProductPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.black),
        backgroundColor: AppColors.whiteSecoundary,
        title: Text(
          product.name,
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
      body: SizedBox(
        height: _size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: _size.height * .01,
              ),
              Container(
                width: _size.width,
                height: _size.height * .5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(product.imageUrl),
                  ),
                ),
              ),
              Container(
                width: _size.width,
                padding: const EdgeInsets.all(15),
                child: Text(
                  product.name,
                  textAlign: TextAlign.start,
                  style: AppTextStyles.titleListTile.copyWith(fontSize: 22),
                ),
              ),
              Divider(),
              Container(
                padding: const EdgeInsets.all(15),
                child: Text(
                  product.description,
                  textAlign: TextAlign.start,
                  style: AppTextStyles.normalTextBlack.copyWith(fontSize: 18),
                ),
              ),
              Divider(),
              Container(
                padding: const EdgeInsets.all(15),
                child: Text(
                  product.observation,
                  textAlign: TextAlign.start,
                  style: AppTextStyles.normalTextBlack.copyWith(fontSize: 18),
                ),
              ),
              SizedBox(
                  width: _size.width,
                  height: _size.height * .3,
                  child: Image.asset(
                    AppImages.maps,
                    fit: BoxFit.cover,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
