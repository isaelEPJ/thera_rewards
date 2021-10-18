import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thera_rewards/modules/care/care_page.dart';
import 'package:thera_rewards/modules/discount/discount_sheet.dart';
import 'package:thera_rewards/modules/experiences/experiences_page.dart';
import 'package:thera_rewards/modules/index/widgets/gread_card.dart';
import 'package:thera_rewards/modules/index/widgets/medium_card.dart';
import 'package:thera_rewards/modules/index/widgets/small_card.dart';
import 'package:thera_rewards/modules/promotions/promotion_page.dart';
import 'package:thera_rewards/shared/models/user_model.dart';
import 'package:thera_rewards/shared/text_to_shared.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_images.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.Dart';

class IndexPage extends StatefulWidget {
  final UserModel user;
  const IndexPage({Key? key, required this.user}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(_size.height * .17),
        child: SizedBox(
          width: _size.width,
          height: _size.height,
          child: Container(
            height: _size.height * .17,
            color: AppColors.whiteSecoundary,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    width: _size.width * .41,
                    child: Image.asset(
                      AppImages.logo,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: _size.width * .1,
                ),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Olá,  ${widget.user.name.split(' ')[0]}',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: AppTextStyles.normalTextBlack
                              .copyWith(fontSize: 18),
                        ),
                        SizedBox(
                          height: _size.height * .01,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.star_fill,
                              color: AppColors.yellow,
                              size: 19,
                            ),
                            Text(
                              ' 15 Pontos ',
                              overflow: TextOverflow.fade,
                              style: AppTextStyles.normalTextSecoundary
                                  .copyWith(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(width: .5, color: AppColors.primary),
                      image: DecorationImage(
                          // fit: BoxFit.cover,
                          image: NetworkImage(widget.user.photoURL ?? ''))),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: _size.height * .9,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: _size.width * .9,
                    height: _size.height * .2,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 15),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://media.istockphoto.com/photos/love-taking-care-of-my-skin-picture-id1280517978?b=1&k=20&m=1280517978&s=170667a&w=0&h=WONhaHZ7tHzRCdob6V2Sn3-cYjRWyExWq7mAAwzZIOw='))),
                    child: Text(
                      'Tenha Experiências nunca vistas antes com seu cuidado pessoal.',
                      overflow: TextOverflow.fade,
                      style: AppTextStyles.normalTextBackground
                          .copyWith(fontSize: 20),
                    ),
                  ),
                  Container(
                    width: _size.width * .9,
                    height: _size.height * .2,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 15),
                    decoration: BoxDecoration(
                        color: AppColors.grayPrimary.withOpacity(0.5)),
                    child: Text(
                      'Tenha Experiências nunca vistas antes com seu cuidado pessoal.',
                      overflow: TextOverflow.fade,
                      style: AppTextStyles.normalTextBackground
                          .copyWith(fontSize: 20),
                    ),
                  ),
                ],
              ),
              GreatCard(
                title: 'Experiências Grátis',
                content: 'Consiga nossas amostras gratis',
                icon: CupertinoIcons.add_circled,
                color: AppColors.whitePrimary,
                action: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExperiencesPage(user: widget.user),
                    ),
                  );
                },
              ),
              SingleChildScrollView(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                      width: _size.width,
                      height: _size.height * .25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MediumCard(
                            title: 'Promoçoes',
                            content: 'E beneficios para voce aproveitar',
                            icon: Icons.sell_outlined,
                            color: AppColors.skin1,
                            action: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PromotionsPage(
                                          user: widget.user,
                                        )),
                              );
                            },
                          ),
                          MediumCard(
                            title: 'Comunidade',
                            content: 'Junte-se a amigos e ganhe benefícios',
                            icon: Icons.people,
                            color: AppColors.green,
                            action: () => Share.share(textToShared),
                          ),
                        ],
                      )),
                ),
              ),
              Container(
                width: _size.width,
                height: _size.height * .2,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SmallCard(
                        title: 'Dicas de cuidados',
                        content: 'Tenha melhores cuidados com a pele',
                        icon: Icons.healing,
                        color: AppColors.whitePrimary,
                        action: () {
                          showModalBottomSheet(
                              elevation: 10,
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              isScrollControlled: true,
                              builder: (context) {
                                return CarePage(user: widget.user);
                              });
                        },
                      ),
                      SmallCard(
                        title: 'Desconto do app',
                        content: 'voce tem desconto baixando esse app',
                        icon: Icons.sell_rounded,
                        color: AppColors.whitePrimary,
                        action: () {
                          showModalBottomSheet(
                              elevation: 10,
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              isScrollControlled: true,
                              builder: (context) {
                                return DiscountSheet();
                              });
                        },
                      ),
                      SmallCard(
                        title: 'Quiz',
                        content: 'Jogue e ganhe pontos',
                        icon: Icons.quiz,
                        color: AppColors.whitePrimary,
                        action: () {
                          showModalBottomSheet(
                              elevation: 10,
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              isScrollControlled: true,
                              builder: (context) {
                                return DiscountSheet();
                              });
                        },
                      ),
                      SmallCard(
                        title: 'Lugares',
                        content: 'Saiba onde vendemos nossos produtos',
                        icon: Icons.map_outlined,
                        color: AppColors.whitePrimary,
                        action: () {
                          showModalBottomSheet(
                              elevation: 10,
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              isScrollControlled: true,
                              builder: (context) {
                                return DiscountSheet();
                              });
                        },
                      ),
                      SmallCard(
                        title: 'TheraClub',
                        content: 'Conheça o TheraClub',
                        icon: CupertinoIcons.arrow_right,
                        color: AppColors.whitePrimary,
                        action: () async {
                          await launch('https://theraskin.com.br/theraclub/');
                        },
                      ),
                      SmallCard(
                        title: 'TheraSkin Pediatria',
                        content: 'Conheça nosso setor de pediatria.',
                        icon: Icons.group_outlined,
                        color: AppColors.whitePrimary,
                        action: () async {
                          await launch('https://theraskinpediatria.com.br/');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
