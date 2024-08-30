import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/UI/projects/components/info_tile.dart';
import 'package:portfolio/UI/projects/pages/projects_page.dart';

class ProjectInfo extends StatelessWidget {
  const ProjectInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'AIRBNB',
          textAlign: TextAlign.center,
          style: GoogleFonts.manrope(
            color: Color(0xFFC6FCA6),
            fontWeight: FontWeight.w800,
            letterSpacing: 0.84,
            textStyle: Theme.of(context).textTheme.bodyLarge!,
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.02,
        ),
        Text(
          'Curating AR experiences while travelling',
          style: GoogleFonts.manrope(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            textStyle: Theme.of(context).textTheme.headlineMedium!,
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.015,
        ),
        Container(
          width: 447,
          height: 3,
          color: Colors.white.withOpacity(0.14000000059604645),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.015,
        ),
        InfoTile(),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.012,
        ),
        InfoTile(),
      ],
    );
  }
}
