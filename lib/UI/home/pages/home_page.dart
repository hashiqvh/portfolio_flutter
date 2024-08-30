import 'package:flutter/material.dart';
import 'package:portfolio/UI/about/pages/about_page.dart';
import 'package:portfolio/UI/banner/pages/banner_page.dart';
import 'package:portfolio/UI/connect/pages/connect_page.dart';
import 'package:portfolio/UI/home/components/header.dart';
import 'package:portfolio/UI/home/components/home_button.dart';
import 'package:portfolio/UI/projects/pages/projects_page.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/core/responsive/screen_utli.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  GlobalKey _homeKey = GlobalKey();
  GlobalKey _projectsKey = GlobalKey();
  GlobalKey _aboutKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF051218),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(key: _homeKey, child: BannerPage()),
                    Container(key: _projectsKey, child: ProjectsPage()),
                    Container(key: _aboutKey, child: AboutPage()),
                    ConnectPage(),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: 0,
              child: Header(
                homeTap: () {
                  Scrollable.ensureVisible(
                    _homeKey.currentContext!,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                aboutTap: () {
                  Scrollable.ensureVisible(
                    _aboutKey.currentContext!,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                projectTap: () {
                  Scrollable.ensureVisible(
                    _projectsKey.currentContext!,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              )),
        ],
      ),
    );
  }
}
