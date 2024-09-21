import 'package:flutter/material.dart';
import 'package:portfolio/UI/detail/components/ripple_circle.dart';

class MapBox extends StatelessWidget {
  const MapBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(0.10000000149011612),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Stack(
        children: [
          Image.asset('assets/map.png'),
          const Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child:
                Align(alignment: Alignment.center, child: RippleCircleLarge()),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Container(
              padding: const EdgeInsets.only(
                top: 6,
                left: 12,
                right: 12,
                bottom: 6,
              ),
              decoration: ShapeDecoration(
                color: const Color(0xB2081B28),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(42),
                ),
              ),
              child: const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '📍',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: 'Berlin, Germany',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
