import 'package:flutter/widgets.dart';

class HomeController {
  // var currentPage = 0;
  final currentPage = ValueNotifier<int>(0);

  void setPage(int index) {
    currentPage.value = index;
  }
}
