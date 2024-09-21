import 'package:flutter/material.dart';

class TopCurvedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white.withOpacity(0.10000000149011612)
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke; // Draw only the border

    var path = Path();

    // Start at the bottom-left of the top edge
    // Start at the top-left corner
    path.moveTo(0, 200);

    // Draw a curve towards the top-right corner
    path.quadraticBezierTo(size.width / 2, 0, size.width, 200);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
