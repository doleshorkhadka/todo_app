import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/controller/start_controller.dart';
import 'package:todo_app/core/app_color.dart';
import 'package:todo_app/routes/navigation_routes.dart';
import 'package:todo_app/views/custompainter.dart';
import 'package:todo_app/views/start_screen/login.dart';

class BottomNavAppBar extends StatefulWidget {
  BottomNavAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavAppBar> createState() => _BottomNavAppBarState();
}

class _BottomNavAppBarState extends State<BottomNavAppBar> {
  OnboardingInfoController controller = OnboardingInfoController();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Stack(
        children: [
          CustomPaint(
            // size: const Size(double.infinity, 150),
            painter: BottomNavBarPainter(navcolor: AppColor.bottomnav),
            child: Container(
              margin: const EdgeInsets.only(bottom: 20, left: 10),
              height: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Back',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  Row(
                    children: List.generate(
                      controller.myLists.length,
                      (index) {
                        return Container(
                          margin: EdgeInsets.all(4),
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            color: controller.pageController.page == index
                                ? Colors.white
                                : Colors.white54,
                            shape: BoxShape.circle,
                          ),
                        );
                      },
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => LoginBottomSheet());
                    },
                    child: const Text('Login',
                        style: TextStyle(color: Colors.white70)),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 168,
            child: FloatingActionButton(
              backgroundColor: AppColor.mainbuttons,
              elevation: 10,
              onPressed: () {
                if (controller.pageController.page! >= 2) {
                  Navigator.popAndPushNamed(context, RouteManager.homepage);
                } else {
                  controller.pageController.nextPage(
                      duration: Duration(milliseconds: 10),
                      curve: Curves.easeIn);
                  setState(() {});
                }
              },
              child: const Icon(CupertinoIcons.arrow_right),
            ),
          ),
        ],
      ),
    );
  }
}
