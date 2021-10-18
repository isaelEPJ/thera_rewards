import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thera_rewards/modules/profile/components/modal_profile.dart';
import 'package:thera_rewards/shared/models/user_model.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';

class ProfilePage extends StatelessWidget {
  final UserModel user;
  const ProfilePage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    // final authController = AuthController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(_size.height * .25),
        child: Container(
          width: _size.width,
          height: _size.height * .25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: _size.width * .01,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 65,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    padding: const EdgeInsets.all(10),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: .5),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(user.photoURL ?? ''))),
                  ),
                ],
              ),
              Container(
                width: _size.width * .7,
                height: _size.height * .2,
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: _size.height * .05,
                    ),
                    Text(
                      'Olá,  ${user.name.split(' ')[0]} !',
                      overflow: TextOverflow.fade,
                      style: AppTextStyles.titleListTile.copyWith(fontSize: 22),
                    ),
                    Text(
                      'Edite Suas informaçoes',
                      overflow: TextOverflow.fade,
                      style: AppTextStyles.normalTextPrimary
                          .copyWith(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        width: _size.width,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Modalprofile(
                  title: 'Informaçoes Pessoais',
                  appcolors: AppColors.black,
                  icon: CupertinoIcons.person,
                  action: () {},
                ),
                Modalprofile(
                  title: 'Configuraçoes',
                  appcolors: AppColors.black,
                  icon: CupertinoIcons.settings,
                  action: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Modalprofile(
                  title: 'Localizaçoes',
                  appcolors: AppColors.black,
                  icon: CupertinoIcons.location,
                  action: () {},
                ),
                Modalprofile(
                  title: 'Sair',
                  appcolors: AppColors.red,
                  icon: CupertinoIcons.arrow_left_circle,
                  action: () {},
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
