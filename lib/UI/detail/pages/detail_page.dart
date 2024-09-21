import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/UI/connect/pages/connect_page.dart';
import 'package:portfolio/UI/detail/components/detail_divider.dart';
import 'package:portfolio/UI/detail/components/job_experience_tile.dart';
import 'package:portfolio/UI/detail/components/map_box.dart';
import 'package:portfolio/UI/detail/components/skill_container.dart';
import 'package:portfolio/UI/detail/components/top_curve_border.dart';
import 'package:portfolio/UI/home/components/header.dart';
import 'package:portfolio/core/app_route/app_route.dart';
import 'package:portfolio/core/responsive/responsive.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final List<String> imgList = [
    'https://via.placeholder.com/600x400/FF0000/FFFFFF/?text=Image1',
    'https://via.placeholder.com/600x400/00FF00/FFFFFF/?text=Image2',
    'https://via.placeholder.com/600x400/0000FF/FFFFFF/?text=Image3',
    'https://via.placeholder.com/600x400/FFFF00/FFFFFF/?text=Image4',
    'https://via.placeholder.com/600x400/FF00FF/FFFFFF/?text=Image5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF051218),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: Responsive.isTablet(context)
                      ? MediaQuery.sizeOf(context).height * 0.15
                      : Responsive.isMobile(context)
                          ? MediaQuery.sizeOf(context).height * 0.1
                          : MediaQuery.sizeOf(context).height * 0.2,
                ),
                Padding(
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
                  child: Responsive.isMobile(context) ||
                          Responsive.isTablet(context)
                      ? Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('BEYOND PORTFOLIO',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFFC6FCA6),
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    )),
                                Text('Let’s know more about me ',
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.80,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headlineMedium,
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                const MapBox()
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const SkillContainer()
                          ],
                        )
                      : IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('BEYOND PORTFOLIO',
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFFC6FCA6),
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        )),
                                    Text('Let’s know more about me ',
                                        style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.80,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headlineMedium,
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const MapBox(),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  width: MediaQuery.sizeOf(context).width,
                                ),
                              ),
                              const Expanded(
                                flex: 5,
                                child: SkillContainer(),
                              )
                            ],
                          ),
                        ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 200,
                  child: CustomPaint(
                    painter: TopCurvedBorderPainter(),
                  ),
                ),
                Text(
                  'MY EXPERIENCES',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: const Color(0xFFC6FCA6),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Where I've Been Employed",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.headlineMedium,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.80,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                SizedBox(
                  width: Responsive.isDesktop(context) ||
                          Responsive.isTablet(context)
                      ? 654
                      : 328,
                  child: const Column(
                    children: [
                      JobExperienceTitle(
                        companyName: 'Product Designer',
                        jobTitle: 'Smallcase',
                        duration: 'May 2022- Aug 2022 / Bangalore, India',
                        description:
                            "Designed key features for embedding in-platform data widgets, charts, and objects to generate technical reports. Designed interactions for users to ",
                      ),
                      SizedBox(
                        height: 27,
                      ),
                      DetailDivider(),
                      SizedBox(
                        height: 27,
                      ),
                      JobExperienceTitle(
                        companyName: 'Product Designer',
                        jobTitle: 'Smallcase',
                        duration: 'May 2022- Aug 2022 / Bangalore, India',
                        description:
                            "Designed key features for embedding in-platform data widgets, charts, and objects to generate technical reports. Designed interactions for users to ",
                      ),
                      SizedBox(
                        height: 27,
                      ),
                      DetailDivider(),
                      SizedBox(
                        height: 27,
                      ),
                      JobExperienceTitle(
                        companyName: 'Product Designer',
                        jobTitle: 'Smallcase',
                        duration: 'May 2022- Aug 2022 / Bangalore, India',
                        description:
                            "Designed key features for embedding in-platform data widgets, charts, and objects to generate technical reports. Designed interactions for users to ",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.2,
                ),
                const ConnectPage(),
              ],
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Header(
                homeTap: () {
                  context.goNamed(Routes.root.name,
                      queryParameters: {"page": "home"});
                  // Scrollable.ensureVisible(
                  //   _homeKey.currentContext!,
                  //   duration: const Duration(milliseconds: 500),
                  //   curve: Curves.easeInOut,
                  // );
                },
                aboutTap: () {
                  // context.goNamed(Routes.about.name);
                  // Scrollable.ensureVisible(
                  //   _aboutKey.currentContext!,
                  //   duration: Duration(milliseconds: 500),
                  //   curve: Curves.easeInOut,
                  // );
                },
                projectTap: () {
                  context.goNamed(Routes.root.name,
                      queryParameters: {"page": "project"});
                  // Scrollable.ensureVisible(
                  //   _projectsKey.currentContext!,
                  //   duration: const Duration(milliseconds: 500),
                  //   curve: Curves.easeInOut,
                  // );
                },
              )),
        ],
      ),
    );
  }
}
