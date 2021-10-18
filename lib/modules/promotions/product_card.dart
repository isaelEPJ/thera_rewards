import 'package:flutter/material.dart';
import 'package:thera_rewards/modules/promotions/product_page.dart';
import 'package:thera_rewards/shared/models/products_model.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductPage(product: product),
          ),
        );
      },
      child: Container(
        width: _size.width * .6,
        height: _size.height * .4,
        padding: const EdgeInsets.all(10),
        // margin: const EdgeInsets.all(10),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          child: Column(
            children: [
              SizedBox(
                height: _size.height * .2,
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      product.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style:
                          AppTextStyles.normalTextBlack.copyWith(fontSize: 16),
                    ),
                    Center(child: SizedBox(height: _size.height * .01)),
                    Text(
                      product.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style:
                          AppTextStyles.normalTextBlack.copyWith(fontSize: 14),
                    ),
                    SizedBox(height: _size.height * .01),
                    Text(
                      '${product.percentDescount}% de desconto com o código',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.normalTextBlack
                          .copyWith(fontSize: 14, color: AppColors.red),
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
