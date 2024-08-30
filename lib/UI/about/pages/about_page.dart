import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/responsive/responsive.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
                    : EdgeInsets.all(0.0),
        child: Container(
          child: Column(
            children: [
              Responsive.isDesktop(context)
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ABOUT ME',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .merge(TextStyle(
                                      color: Color(0xFFC6FCA6),
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 5.60,
                                    )),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.005,
                              ),
                              Text(
                                'Know who am I',
                                style: GoogleFonts.manrope(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  textStyle:
                                      Theme.of(context).textTheme.displaySmall!,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.019,
                              ),
                              Text(
                                'My journey in few words',
                                style: GoogleFonts.manrope(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  textStyle:
                                      Theme.of(context).textTheme.titleLarge!,
                                  letterSpacing: -0.96,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.02,
                              ),
                              Text(
                                "I’ve designed multiple web & mobile experiences for multi-cross-platform devices from TV to Ipads, etc. I’ve worked with small agencies and also with medium-sized companies. I previously worked with one of India’s largest Ed-Tech startups, Toppr which later got acquired by Byjus. Currently I'm designing aesthetic and functional solutions for smallcase within the invest team, to enhance financial accessibility and understanding for Indian users.",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.manrope(
                                    color: Colors.white.withOpacity(0.5),
                                    // fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .titleMedium!),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.02,
                              ),
                              Container(
                                width: Responsive.isDesktop(context)
                                    ? MediaQuery.sizeOf(context).width * 0.2
                                    : MediaQuery.sizeOf(context).width,
                                height: 48,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF081822),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      color: Colors.white
                                          .withOpacity(0.10000000149011612),
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x14000000),
                                      blurRadius: 24,
                                      offset: Offset(0, 2),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'Know more',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: MediaQuery.sizeOf(context).width,
                            )),
                        Expanded(
                          flex: 2,
                          child: Column(
                            // alignment: Alignment.s,
                            children: [
                              Transform(
                                transform: Matrix4.identity()
                                  ..translate(0.0, 0.0)
                                  ..rotateZ(0.14),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.280,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.346,
                                  padding: EdgeInsets.only(
                                    top: MediaQuery.sizeOf(context).height *
                                        0.011,
                                    left: MediaQuery.sizeOf(context).width *
                                        0.0135,
                                    right: MediaQuery.sizeOf(context).width *
                                        0.01350,
                                    bottom: MediaQuery.sizeOf(context).height *
                                        0.0789,
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF6F6F6),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFF0B1A23),
                                        blurRadius: 4,
                                        offset: Offset(2, 2),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Container(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.273,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.275,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://framerusercontent.com/images/fpM2zJPCmYCK9XyV9EgI2lz0oYk.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.sizeOf(context).height *
                                        0.04),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.081,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.03,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(1.00, -0.04),
                                      end: Alignment(-1, 0.04),
                                      colors: [
                                        Color(0xFFC6FCA6),
                                        Color(0xBCA7FCEE)
                                      ],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x1E000000),
                                        blurRadius: 5.20,
                                        offset: Offset(0, 2.60),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Sunal Sood',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.30,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.08,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ABOUT ME',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .merge(TextStyle(
                                    color: Color(0xFFC6FCA6),
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 5.60,
                                  )),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.005,
                            ),
                            Text(
                              'Know who am I',
                              style: GoogleFonts.manrope(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                textStyle:
                                    Theme.of(context).textTheme.displaySmall!,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.019,
                            ),
                            Text(
                              'My journey in few words',
                              style: GoogleFonts.manrope(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                textStyle:
                                    Theme.of(context).textTheme.titleLarge!,
                                letterSpacing: -0.96,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.02,
                            ),
                            Center(
                              child: Column(
                                // alignment: Alignment.s,
                                children: [
                                  Transform(
                                    transform: Matrix4.identity()
                                      ..translate(.0, 0.0)
                                      ..rotateZ(0.14),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.3,
                                      padding: EdgeInsets.only(
                                        top: MediaQuery.sizeOf(context).height *
                                            0.011,
                                        left: MediaQuery.sizeOf(context).width *
                                            0.0135,
                                        right:
                                            MediaQuery.sizeOf(context).width *
                                                0.01350,
                                        bottom:
                                            MediaQuery.sizeOf(context).height *
                                                0.0789,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF6F6F6),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFF0B1A23),
                                            blurRadius: 4,
                                            offset: Offset(2, 2),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.0273,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.275,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://framerusercontent.com/images/fpM2zJPCmYCK9XyV9EgI2lz0oYk.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: MediaQuery.sizeOf(context).height *
                                            0.04),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.3,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.03,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(1.00, -0.04),
                                          end: Alignment(-1, 0.04),
                                          colors: [
                                            Color(0xFFC6FCA6),
                                            Color(0xBCA7FCEE)
                                          ],
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x1E000000),
                                            blurRadius: 5.20,
                                            offset: Offset(0, 2.60),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Sunal Sood',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.30,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.08,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.04,
                            ),
                            Text(
                              "I’ve designed multiple web & mobile experiences for multi-cross-platform devices from TV to Ipads, etc. I’ve worked with small agencies and also with medium-sized companies. I previously worked with one of India’s largest Ed-Tech startups, Toppr which later got acquired by Byjus. Currently I'm designing aesthetic and functional solutions for smallcase within the invest team, to enhance financial accessibility and understanding for Indian users.",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.manrope(
                                  color: Colors.white.withOpacity(0.5),
                                  // fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  textStyle:
                                      Theme.of(context).textTheme.titleMedium!),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.02,
                            ),
                            Container(
                              width: Responsive.isDesktop(context)
                                  ? MediaQuery.sizeOf(context).width * 0.2
                                  : MediaQuery.sizeOf(context).width,
                              height: 48,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Color(0xFF081822),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    color: Colors.white
                                        .withOpacity(0.10000000149011612),
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x14000000),
                                    blurRadius: 24,
                                    offset: Offset(0, 2),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Know more',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
            ],
          ),
        ));
  }
}
