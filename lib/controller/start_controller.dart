import 'package:flutter/cupertino.dart';
import 'package:todo_app/models/start_page.dart';

class OnboardingInfoController {
  OnboardingInfoController._();
  static final _instance = OnboardingInfoController._();
  factory OnboardingInfoController() => _instance;

  List<OnboardingScreenInfo> myLists = [
    OnboardingScreenInfo(
      image: 'assets/start-img/start.png',
      title: 'Manage Your Task',
      subtitle:
          "Manage all your to-do's in lists and projects. Color tag them to set priorities and categories.",
    ),
    OnboardingScreenInfo(
      image: 'assets/start-img/start2.png',
      title: 'Schedule Your Task',
      subtitle:
          "Schedule all your to-do's in lists and projects. Color tag them to set priorities and categories.",
    ),
    OnboardingScreenInfo(
      image: 'assets/start-img/start3.png',
      title: 'Organize Your Task',
      subtitle:
          "Organize all your to-do's in lists and projects. Color tag them to set priorities and categories.",
    )
  ];
  PageController pageController = PageController();
}
