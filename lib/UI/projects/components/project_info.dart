import 'package:flutter/material.dart';
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
          style: Theme.of(context).textTheme.bodyLarge!.merge(TextStyle(
                color: Color(0xFFC6FCA6),
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w800,
                letterSpacing: 0.84,
              )),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.02,
        ),
        Text(
          'Curating AR experiences while travelling',
          style: Theme.of(context).textTheme.headlineMedium!.merge(TextStyle(
                color: Colors.white,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              )),
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
