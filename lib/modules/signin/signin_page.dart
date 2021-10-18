import 'package:flutter/material.dart';
import 'package:thera_rewards/modules/signin/signIn_controller.dart';
import 'package:thera_rewards/shared/auth/auth_controller.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_images.dart';
import 'package:thera_rewards/shared/themes/app_text_names.dart';
import 'package:thera_rewards/shared/themes/app_text_styles.dart';
import 'package:thera_rewards/shared/widgets/social_login/social_login_button.dart';
import 'package:thera_rewards/shared/widgets/social_login/social_login_button_facebook.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final controller = SignInController();

    return Scaffold(
      backgroundColor: AppColors.whiteSecoundary,
      body: SingleChildScrollView(
        child: Container(
          height: _size.height,
          child: Column(
            children: [
              Container(
                height: _size.height * .28,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(AppImages.logo),
                  ),
                ),
              ),
              Text(
                'Faça Seu Login',
                style: AppTextStyles.titleHome
                    .copyWith(fontWeight: FontWeight.normal, fontSize: 22),
              ),
              Container(
                width: _size.width * .9,
                height: _size.height * .4,
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: _size.width * .9,
                      height: _size.height * .08,
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: Text(
                            'Login',
                            style: AppTextStyles.normalTextBlack,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: _size.width * .9,
                      height: _size.height * .08,
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: Text(
                            'Senha',
                            style: AppTextStyles.normalTextBlack,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: _size.width * .9,
                      height: _size.height * .08,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          primary: AppColors.primary,
                          padding: const EdgeInsets.all(5),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Entrar',
                          style: AppTextStyles.normalTextBackground
                              .copyWith(fontSize: 23),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: _size.width * .9,
                      height: _size.height * .05,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          primary: AppColors.primary,
                          padding: const EdgeInsets.all(5),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Esqueci minha senha',
                          style: AppTextStyles.normalTextPrimary
                              .copyWith(fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: _size.width * .9,
                height: _size.height * .05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: _size.width * .25,
                      child: Divider(
                        height: 1,
                        color: AppColors.black,
                      ),
                    ),
                    Text(
                      'Ou entre com',
                      style:
                          AppTextStyles.normalTextBlack.copyWith(fontSize: 18),
                    ),
                    SizedBox(
                      width: _size.width * .25,
                      child: Divider(
                        height: 1,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: SocialLoginButton(
                      onTap: () => controller.googleSignIn(context))),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: SocialLoginButtonFacebook(
                      onTap: () => controller.googleSignIn(context))),
            ],
          ),
        ),
      ),
    );
  }
}
