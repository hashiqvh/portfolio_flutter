import 'dart:ui';

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Function() homeTap;
  final Function() aboutTap;
  final Function() projectTap;
  const Header({
    super.key,
    required this.homeTap,
    required this.aboutTap,
    required this.projectTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              SizedBox(
                width: 320,
                height: 44,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 320,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(0.07999999821186066),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 12,
                      offset: Offset(-1, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Center(
                        child: InkWell(
                          onTap: homeTap,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Home',
                              style: TextStyle(
                                color:
                                    Colors.white.withOpacity(0.800000011920929),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: InkWell(
                          onTap: projectTap,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Projects',
                              style: TextStyle(
                                color:
                                    Colors.white.withOpacity(0.800000011920929),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: InkWell(
                          onTap: aboutTap,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'About',
                              style: TextStyle(
                                color:
                                    Colors.white.withOpacity(0.800000011920929),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Resume',
                                  style: TextStyle(
                                    color: Color(0xFF151E28),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
