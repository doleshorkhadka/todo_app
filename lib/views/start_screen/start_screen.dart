// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/core/app_color.dart';
import 'package:todo_app/views/start_screen/bottomappbar.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  /// [ LinearGradientInTexts]
  // LinearGradient _gradient = LinearGradient(colors: [
  //   AppColor.bottomnav,
  //   AppColor.mainbuttons,
  //   AppColor.boxcolor1,
  // ]);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavAppBar(),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 30, top: 30, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(80, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ).merge(
                      ButtonStyle(
                        elevation: MaterialStateProperty.resolveWith<double>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return 9;
                            }
                            return 7.0;
                          },
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Skip'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 150 - 112,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                children: [
                  startPageOne(context),
                  startPageTwo(context),
                  startPageThree(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container startPageThree(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 150 - 112,
      width: MediaQuery.of(context).size.width,
      color: AppColor.mainbuttons,
    );
  }

  Container startPageTwo(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 150 - 112,
      width: MediaQuery.of(context).size.width,
      color: AppColor.bottomnav,
    );
  }

  SizedBox startPageOne(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 150 - 112,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Image(
              image: AssetImage('assets/start.png'),
            ),
          ),

          ///  ShaderMaskForTextXColoring
          // ShaderMask(
          //   shaderCallback: (Rect bounds) {
          //     return _gradient.createShader(bounds);
          //   },
          Text(
            'Manage Your Task',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              wordSpacing: 5,
              letterSpacing: 2,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 55),
            child: Text(
              "Organize all your to-do's in lists and projects. Color tag them to set priorities and categories.",
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
