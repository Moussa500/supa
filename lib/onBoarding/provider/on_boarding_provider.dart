import 'package:flutter/material.dart';

class OnBoardingProvider extends ChangeNotifier {
  PageController pageController = PageController();
  bool isLastPage = false;
  void updateState() {
    isLastPage = !isLastPage;
    notifyListeners();
  }
  void goForward() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 30), curve: Curves.linear);
  }
}
