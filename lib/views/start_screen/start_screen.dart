// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:todo_app/controller/start_controller.dart';
import 'package:todo_app/routes/navigation_routes.dart';
import 'package:todo_app/views/start_screen/bottomappbar.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  OnboardingInfoController controller = OnboardingInfoController();
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
                    onPressed: () {
                      controller.pageController.animateToPage(2,
                          duration: Duration(milliseconds: 10),
                          curve: Curves.bounceIn);
                      Navigator.popAndPushNamed(context, RouteManager.homepage);
                    },
                    child: Text('Skip'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 150 - 112,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                controller: controller.pageController,
                physics: PageScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                itemCount: controller.myLists.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height - 150 - 112,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Image(
                            image: AssetImage(controller.myLists[index].image),
                          ),
                        ),
                        Text(
                          controller.myLists[index].title,
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 5,
                            letterSpacing: 2,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 55),
                          child: Text(
                            controller.myLists[index].subtitle,
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
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
