import 'package:flutter/material.dart';
import 'package:thera_rewards/modules/experiences/widgets/amostra_page.dart';
import 'package:thera_rewards/shared/models/amostra.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class AmostraCard extends StatelessWidget {
  final AmostraModel amostra;
  const AmostraCard({Key? key, required this.amostra}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AmostraPage(amostra: amostra)));
      },
      child: Container(
        width: _size.width * .6,
        height: _size.height * .4,
        // padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: _size.height * .2,
                  child: Image.network(amostra.imageUrl)),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      amostra.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style:
                          AppTextStyles.normalTextBlack.copyWith(fontSize: 18),
                    ),
                    Center(child: SizedBox(height: _size.height * .01)),
                    Text(
                      amostra.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style:
                          AppTextStyles.normalTextBlack.copyWith(fontSize: 13),
                    ),
                    SizedBox(height: _size.height * .01),
                    Text(
                      'Experimente antes de comprar comprar, vá até a loja',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: AppTextStyles.normalTextBlack.copyWith(
                          fontSize: 14,
                          color: AppColors.green.withOpacity(0.7)),
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
