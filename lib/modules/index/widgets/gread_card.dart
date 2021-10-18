import 'package:flutter/material.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class GreatCard extends StatelessWidget {
  final String title;
  final String content;
  final Function() action;
  final Color color;
  final IconData icon;
  GreatCard({
    Key? key,
    required this.title,
    required this.content,
    required this.color,
    required this.icon,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return InkWell(
      onTap: action,
      child: Container(
        width: _size.width * .9,
        height: _size.height * .22,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              icon,
              size: 40,
            ),
            SizedBox(
              width: _size.width * .65,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.normalTextBlack
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    content,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.normalTextBlack.copyWith(fontSize: 15),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
