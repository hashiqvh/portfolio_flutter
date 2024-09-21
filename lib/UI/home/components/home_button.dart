import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final List<Widget> content;
  final bool isSecondary;
  const HomeButton({
    super.key,
    required this.content,
    required this.isSecondary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312,
      height: 48,
      clipBehavior: Clip.antiAlias,
      decoration: isSecondary
          ? ShapeDecoration(
              color: const Color(0xFF051218),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Colors.white.withOpacity(0.20000000298023224),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x14000000),
                  blurRadius: 24,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            )
          : ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x14000000),
                  blurRadius: 24,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: content,
      )),
    );
  }
}
