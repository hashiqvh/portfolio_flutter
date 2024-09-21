import 'package:flutter/material.dart';

class RippleCircleLarge extends StatefulWidget {
  const RippleCircleLarge({super.key});

  @override
  State<RippleCircleLarge> createState() => _RippleCircleLargeState();
}

class _RippleCircleLargeState extends State<RippleCircleLarge>
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
      width: 183.02,
      height: 183.02,
      child: AnimatedBuilder(
        animation:
            CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
        builder: (context, child) {
          return Stack(
            alignment: Alignment.center,
            children: <Widget>[
              _buildContainer(53.02 * _controller.value),
              _buildContainer(83.02 * _controller.value),
              _buildContainer(103.02 * _controller.value),
              _buildContainer(123.02 * _controller.value),
              _buildContainer(153.02 * _controller.value),
              _buildContainer(183.02 * _controller.value),
              Container(
                width: 65.49,
                height: 65.49,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/user.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
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
        color: const Color(0x81092A40)
            .withOpacity(0.57)
            .withOpacity(1 - _controller.value),
      ),
    );
  }
}
