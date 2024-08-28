import 'package:flutter/material.dart';
import 'package:portfolio/UI/banner/pages/banner_page.dart';
import 'package:portfolio/UI/home/components/home_button.dart';
import 'package:portfolio/UI/projects/pages/projects_page.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/core/responsive/screen_utli.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF051218),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/img4.png",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -7.00),
                  end: Alignment(0, 1),
                  colors: [Color(0x0012181E), Color(0xFF051218)],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      width: 302,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.07999999821186066),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1,
                          color: Color(0xFF4D4D4D),
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Color(0x19000000),
                        //     blurRadius: 12,
                        //     offset: Offset(-1, 2),
                        //     spreadRadius: 0,
                        //   )
                        // ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                'Home',
                                style: TextStyle(
                                  color: Colors.white
                                      .withOpacity(0.800000011920929),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'Projects',
                                style: TextStyle(
                                  color: Colors.white
                                      .withOpacity(0.800000011920929),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'About',
                                style: TextStyle(
                                  color: Colors.white
                                      .withOpacity(0.800000011920929),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
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
                        ],
                      ),
                    ),
                  ),
                ),
                BannerPage(),
                Text(
                  'CURATED WORK',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFC6FCA6),
                    fontSize: 14,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 5.60,
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Text('Featured Case Studies',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineLarge!.apply(
                          color: Colors.white,
                          fontWeightDelta: 400,
                          //   fontFamily: 'Inter',
                        )),
                SizedBox(
                  height: Responsive.isDesktop(context)
                      ? MediaQuery.sizeOf(context).height * 0.028
                      : MediaQuery.sizeOf(context).height * 0.018,
                ),
                SizedBox(
                  width: 312,
                  child: Text(
                      'Compilation of case studies that evoke my sense of pride',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge!.apply(
                            color: Colors.white,

                            //   fontFamily: 'Inter',
                          )),
                ),
                SizedBox(
                  height: Responsive.isDesktop(context)
                      ? MediaQuery.sizeOf(context).height * 0.065
                      : MediaQuery.sizeOf(context).height * 0.04,
                ),
                ProjectsPage()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
