import 'package:flutter/material.dart';
import 'package:portfolio/UI/home/components/home_button.dart';
import 'package:portfolio/core/responsive/responsive.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Responsive.isDesktop(context)
              ? MediaQuery.sizeOf(context).height * 0.12
              : MediaQuery.sizeOf(context).height * 0.08,
        ),
        Image.asset(
          "assets/memoji-computer.png",
          height: Responsive.isDesktop(context)
              ? MediaQuery.sizeOf(context).height * 0.12
              : MediaQuery.sizeOf(context).height * 0.1,
        ),
        Container(
          width: 238.96,
          height: 38.28,
          decoration: ShapeDecoration(
            color: Color(0xCC001402),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFF061E17)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 22,
              ),
              Container(
                width: 15.31,
                height: 15.31,
                decoration: BoxDecoration(
                    color: Color.fromARGB(169, 68, 194, 81),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Color(0xFF44C250),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Available for opportunities',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.800000011920929),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Responsive.isDesktop(context)
              ? MediaQuery.sizeOf(context).height * 0.033
              : MediaQuery.sizeOf(context).height * 0.033,
        ),
        SizedBox(
          width: 293.90,
          height: 73.59,
          child: Text(
            'Welcome to my \ndigital humble abode',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium!.merge(TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                )),
          ),
        ),
        SizedBox(
          height: Responsive.isDesktop(context)
              ? MediaQuery.sizeOf(context).height * 0.022
              : MediaQuery.sizeOf(context).height * 0.022,
        ),
        Text(
          'My interest lies in brand experience, and ',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium!.merge(TextStyle(
                color: Colors.white.withOpacity(0.4000000059604645),
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w500,
              )),
        ),
        SizedBox(
          height: 42,
        ),
        Responsive.isMobile(context) || Responsive.isTablet(context)
            ? Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.sizeOf(context).width * 0.039,
                  right: MediaQuery.sizeOf(context).width * 0.039,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HomeButton(
                      content: [
                        Text(
                          " Let's talk",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .merge(TextStyle(
                                color: Colors.white,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                      ],
                      isSecondary: true,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.016,
                    ),
                    HomeButton(
                      content: [
                        Text(
                          " Let's talk",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .merge(TextStyle(
                                color: Colors.black,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                      ],
                      isSecondary: false,
                    ),
                  ],
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeButton(
                    content: [
                      Text(
                        " Let's talk",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium!.merge(
                              TextStyle(
                                color: Colors.white,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                      ),
                    ],
                    isSecondary: true,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.016,
                  ),
                  HomeButton(
                    content: [
                      Text(
                        " Let's talk",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .merge(TextStyle(
                              color: Colors.black,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w700,
                            )),
                      ),
                    ],
                    isSecondary: false,
                  ),
                ],
              ),
        SizedBox(
          height: Responsive.isDesktop(context)
              ? MediaQuery.sizeOf(context).height * 0.254
              : MediaQuery.sizeOf(context).height * 0.096,
        ),
      ],
    );
  }
}
