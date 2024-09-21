import 'package:flutter/material.dart';

import 'animated_scrolling_list.dart';

class SkillContainer extends StatelessWidget {
  const SkillContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
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
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 60,
                      spreadRadius: 60,
                      color: Color.fromARGB(27, 123, 163, 156)),
                  BoxShadow(
                      blurRadius: 50,
                      spreadRadius: 50,
                      color: Color.fromARGB(32, 198, 252, 166)),
                ],
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 59.0),
                child: Text(
                  'My Tech Stacks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Text(
                  'Designed key features for embedding in-platform data widgets, charts,',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(height: 80, child: AutoScrollingListView()),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                  height: 80,
                  child: AutoScrollingListView(
                    isReverse: true,
                  )),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
