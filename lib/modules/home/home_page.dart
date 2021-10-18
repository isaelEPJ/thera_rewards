import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thera_rewards/modules/favorites/favorites_page.dart';
import 'package:thera_rewards/modules/home/home_controller.dart';
import 'package:thera_rewards/modules/index/index_page.dart';
import 'package:thera_rewards/modules/profile/profile_page.dart';
import 'package:thera_rewards/modules/score/score_page.dart';
import 'package:thera_rewards/shared/models/user_model.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  HomePage({Key? key, required this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  @override
  @override
  Widget build(BuildContext context) {
    final pages = [
      IndexPage(user: widget.user),
      FavoritesPage(user: widget.user),
      Scorepage(user: widget.user),
      ProfilePage(user: widget.user),
    ];
    return Scaffold(
      body: pages[controller.currentPage.value],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.primary.withOpacity(.9),
        showUnselectedLabels: true,
        currentIndex: controller.currentPage.value,
        onTap: (index) {
          setState(() {
            controller.setPage(index);
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart), label: 'Favoritos'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.checkmark_circle), label: 'Pontos'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), label: 'Perfil')
        ],
      ),
    );
  }
}
