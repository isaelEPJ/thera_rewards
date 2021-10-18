import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_images.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class DiscountSheet extends StatelessWidget {
  final String? content;
  final Function()? action;
  DiscountSheet({
    Key? key,
    this.content,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Container(
      width: _size.width,
      height: _size.height * .9,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.whiteSecoundary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(CupertinoIcons.xmark),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Descontos Para voce',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.normalTextBlack
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: _size.width,
                      height: _size.height * .03,
                    ),
                    Icon(
                      Icons.qr_code_2_outlined,
                      size: 180,
                    ),
                    SizedBox(
                      width: _size.width,
                      height: _size.height * .01,
                    ),
                    Text(
                      'Leia o codigo de barras ou Informe o numero e ganhe Descontos na farmacia',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.normalTextBlack.copyWith(
                          fontWeight: FontWeight.normal, fontSize: 17),
                    ),
                    SizedBox(
                      width: _size.width,
                      height: _size.height * .03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '000215248552145 ',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.normalTextBlack
                              .copyWith(fontSize: 15),
                        ),
                        Icon(Icons.content_copy_rounded),
                      ],
                    ),
                    SizedBox(
                      width: _size.width,
                      height: _size.height * .03,
                    ),
                    SizedBox(
                      width: _size.width,
                      height: _size.height * .3,
                      child: Image.asset(
                        AppImages.codeSource,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      width: _size.width,
                      height: _size.height * .03,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
