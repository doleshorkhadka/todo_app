import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/app_color.dart';
import 'package:todo_app/views/custompainter.dart';

class BottomNavAppBar extends StatelessWidget {
  const BottomNavAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Stack(
        children: [
          CustomPaint(
            // size: const Size(double.infinity, 150),
            painter: BottomNavBarPainter(navcolor: AppColor.bottomnav),
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                  Container(
                    height: 30,
                    // color: Colors.black,
                    width: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 5,
                          height: 5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('SignUp'),
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
              onPressed: () {},
              child: const Icon(CupertinoIcons.arrow_right),
            ),
          ),
        ],
      ),
    );
  }
}
