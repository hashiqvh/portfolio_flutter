import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/responsive/responsive.dart';

class ConnectPage extends StatelessWidget {
  const ConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: Responsive.isTablet(context)
            ? EdgeInsets.only(
                left: MediaQuery.sizeOf(context).width * 0.2,
                right: MediaQuery.sizeOf(context).width * 0.2,
              )
            : Responsive.isMobile(context)
                ? EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width * 0.1,
                    right: MediaQuery.sizeOf(context).width * 0.1,
                  )
                : Responsive.isDesktop(context)
                    ? EdgeInsets.only(
                        left: MediaQuery.sizeOf(context).width * 0.2,
                        right: MediaQuery.sizeOf(context).width * 0.2,
                      )
                    : const EdgeInsets.all(0.0),
        child: Responsive.isDesktop(context) || Responsive.isTablet(context)
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width - 100,
                    height: 1,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.10999999940395355),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.019,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Twitter ',
                            style: GoogleFonts.manrope(
                              color:
                                  Colors.white.withOpacity(0.800000011920929),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Transform.rotate(
                            angle: -45,
                            child: const Icon(
                              FontAwesomeIcons.arrowRight,
                              size: 16,
                              color: Color(0xFFC6FCA6),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'LinkedIn ',
                            style: GoogleFonts.manrope(
                              color:
                                  Colors.white.withOpacity(0.800000011920929),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Transform.rotate(
                            angle: -45,
                            child: const Icon(
                              FontAwesomeIcons.arrowRight,
                              size: 16,
                              color: Color(0xFFC6FCA6),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Instagram ',
                            style: GoogleFonts.manrope(
                              color:
                                  Colors.white.withOpacity(0.800000011920929),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Transform.rotate(
                            angle: -45,
                            child: const Icon(
                              FontAwesomeIcons.arrowRight,
                              size: 16,
                              color: Color(0xFFC6FCA6),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.019,
                  ),
                ],
              )
            : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  width: MediaQuery.sizeOf(context).width - 100,
                  height: 1,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.10999999940395355),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.019,
                ),
                Row(
                  children: [
                    Text(
                      'Twitter ',
                      style: GoogleFonts.manrope(
                        color: Colors.white.withOpacity(0.800000011920929),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Transform.rotate(
                      angle: -45,
                      child: const Icon(
                        FontAwesomeIcons.arrowRight,
                        size: 16,
                        color: Color(0xFFC6FCA6),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.019,
                ),
                Row(
                  children: [
                    Text(
                      'LinkedIn ',
                      style: GoogleFonts.manrope(
                        color: Colors.white.withOpacity(0.800000011920929),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Transform.rotate(
                      angle: -45,
                      child: const Icon(
                        FontAwesomeIcons.arrowRight,
                        size: 16,
                        color: Color(0xFFC6FCA6),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.019,
                ),
                Row(
                  children: [
                    Text(
                      'Instagram ',
                      style: GoogleFonts.manrope(
                        color: Colors.white.withOpacity(0.800000011920929),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Transform.rotate(
                      angle: -45,
                      child: const Icon(
                        FontAwesomeIcons.arrowRight,
                        size: 16,
                        color: Color(0xFFC6FCA6),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.019,
                ),
              ]));
  }
}
