import 'package:flutter/material.dart';
import 'package:thera_rewards/modules/care/care_detail.dart';
import 'package:thera_rewards/shared/models/care_model.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class CareCard extends StatelessWidget {
  final CareModel care;
  const CareCard({Key? key, required this.care}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Container(
      width: _size.width * .6,
      height: _size.height * .5,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      // margin: const EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(care.imageUrl),
                ),
              ),
              width: _size.width,
              height: _size.height * .2,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    care.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.normalTextBlack
                        .copyWith(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Center(child: SizedBox(height: _size.height * .02)),
                  Text(
                    care.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: AppTextStyles.normalTextBlack.copyWith(fontSize: 14),
                  ),
                  SizedBox(height: _size.height * .02),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(right: 5),
                    height: _size.height * .05,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: AppColors.primaryLight),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CareDetail(care: care),
                          ),
                        );
                      },
                      child: Text(
                        'Saiba mais',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.normalTextBlack,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
