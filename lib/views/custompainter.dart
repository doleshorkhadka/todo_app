import 'package:flutter/material.dart';
import 'package:todo_app/core/app_color.dart';

class BottomNavBarPainter extends CustomPainter {
  BottomNavBarPainter({this.navcolor});
  final Color? navcolor;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader =
          LinearGradient(colors: [AppColor.mainbuttons, AppColor.bottomnav])
              .createShader(
        Rect.fromPoints(
          Offset(0, size.height),
          Offset(size.width, 0),
        ),
      )
      ..style = PaintingStyle.fill
      ..strokeWidth = 0;

    Path path = Path()
      ..quadraticBezierTo(
          0, size.height * 0.3, size.width * 0.2, size.height * 0.3)
      ..lineTo(size.width * 0.35, size.height * 0.3)
      ..quadraticBezierTo(size.width * 0.4, size.height * 0.3, size.width * 0.4,
          size.height * 0.4)
      ..arcToPoint(
        Offset(size.width * 0.6, size.height * 0.4),
        radius: const Radius.circular(15),
        clockwise: false,
      )
      ..quadraticBezierTo(size.width * 0.6, size.height * 0.3,
          size.width * 0.65, size.height * 0.3)
      ..lineTo(size.width * 0.84, size.height * 0.3)
      ..quadraticBezierTo(
          size.width, size.height * 0.29, size.width, -size.height * 0.01)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.black, 10, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
