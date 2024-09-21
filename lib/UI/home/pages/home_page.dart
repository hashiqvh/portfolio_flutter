import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/UI/about/pages/about_page.dart';
import 'package:portfolio/UI/banner/pages/banner_page.dart';
import 'package:portfolio/UI/connect/pages/connect_page.dart';
import 'package:portfolio/UI/home/components/header.dart';
import 'package:portfolio/UI/projects/pages/projects_page.dart';
import 'package:portfolio/core/app_route/app_route.dart';

class HomePage extends StatefulWidget {
  final String page;
  const HomePage({super.key, this.page = 'home'});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Define keys for scrollable sections
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToSection(widget.page);
    });
  }

  // Function to scroll to the corresponding section based on the page
  void _scrollToSection(String page) {
    switch (page) {
      case 'home':
        _scrollToKey(_homeKey);
        break;
      case 'project':
        _scrollToKey(_projectsKey);
        break;
      case 'about':
        _scrollToKey(_aboutKey);
        break;
      default:
        break;
    }
  }

  // Scrolls to a specific section using its GlobalKey
  void _scrollToKey(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF051218),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                // Background image
                Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img4.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                // Gradient overlay
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -7.00),
                      end: Alignment(0, 1),
                      colors: [Color(0x0012181E), Color(0xFF051218)],
                    ),
                  ),
                ),
                // Main content with scrollable sections
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(key: _homeKey, child: const BannerPage()),
                    Container(key: _projectsKey, child: const ProjectsPage()),
                    Container(key: _aboutKey, child: const AboutPage()),
                    const ConnectPage(),
                  ],
                ),
              ],
            ),
          ),
          // Header positioned at the top
          Positioned(
            top: 0,
            child: Header(
              homeTap: () => _scrollToKey(_homeKey),
              aboutTap: () => context.goNamed(Routes.about.name),
              projectTap: () => _scrollToKey(_projectsKey),
            ),
          ),
        ],
      ),
    );
  }
}
