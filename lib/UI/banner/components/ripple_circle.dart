import 'package:flutter/material.dart';

class RippleCircle extends StatefulWidget {
  const RippleCircle({super.key});

  @override
  State<RippleCircle> createState() => _RippleCircleState();
}

class _RippleCircleState extends State<RippleCircle>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      lowerBound: 0.5,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    return SizedBox(
      height: 25,
      width: 25,
      child: AnimatedBuilder(
        animation:
            CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
        builder: (context, child) {
          return Stack(
            alignment: Alignment.center,
            children: <Widget>[
              _buildContainer(15 * _controller.value),
              _buildContainer(20 * _controller.value),
              _buildContainer(25 * _controller.value),
            ],
          );
        },
      ),
    );
  }

  Widget _buildContainer(double radius) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color.fromARGB(169, 68, 194, 81)
            .withOpacity(1 - _controller.value),
      ),
    );
  }
}
