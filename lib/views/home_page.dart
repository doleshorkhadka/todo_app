import 'package:flutter/material.dart';
import 'package:todo_app/core/app_color.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final String greetings = 'Good Morning';
  final String commands = 'Complete this task for a better habits';
  final TextStyle textStyle = const TextStyle(
      fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    EdgeInsets topBoxPadding = const EdgeInsets.only(left: 30, top: 70);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height / 2.5,
                decoration: BoxDecoration(
                  color: AppColor.scaffoldbody,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: topBoxPadding,
                      width: width - width / 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            greetings,
                            style: const TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            commands,
                            maxLines: 2,
                            overflow: TextOverflow.visible,
                            style: textStyle,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 80, left: 60),
                      child: Icon(
                        Icons.search,
                        size: 50,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: height,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
