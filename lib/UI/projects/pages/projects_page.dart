import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/UI/projects/components/project_item.dart';
import 'package:portfolio/core/responsive/responsive.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.1,
        ),
        Text(
          'CURATED WORK',
          textAlign: TextAlign.center,
          style: GoogleFonts.manrope(
            color: const Color(0xFFC6FCA6),
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 5.60,
            textStyle: Theme.of(context).textTheme.titleMedium!,
          ),
        ),
        const SizedBox(
          height: 28,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0235.70,
          child: Text(
            'Featured Case Studies',
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSansOldItalic(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              textStyle: Theme.of(context).textTheme.headlineMedium!,
            ),
          ),
        ),
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
            style: GoogleFonts.manrope(
              color: Colors.white,
              textStyle: Theme.of(context).textTheme.titleMedium!,
            ),
          ),
        ),
        SizedBox(
          height: Responsive.isDesktop(context)
              ? MediaQuery.sizeOf(context).height * 0.065
              : MediaQuery.sizeOf(context).height * 0.04,
        ),
        const ProjectItem(),
        const SizedBox(
          height: 80,
        ),
        const ProjectItem(
          isWeb: true,
        ),
        const SizedBox(
          height: 80,
        ),
        const ProjectItem(),
        const SizedBox(
          height: 80,
        ),
        const ProjectItem(
          isWeb: true,
        ),
        const SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
