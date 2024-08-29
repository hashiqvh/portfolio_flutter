import 'package:flutter/material.dart';
import 'package:portfolio/UI/projects/components/project_item.dart';
import 'package:portfolio/core/responsive/responsive.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0235.70,
          child: Text('Featured Case Studies',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium!.apply(
                    color: Colors.white,
                    fontWeightDelta: 400,
                    //   fontFamily: 'Inter',
                  )),
        ),
        SizedBox(
          height: Responsive.isDesktop(context)
              ? MediaQuery.sizeOf(context).height * 0.028
              : MediaQuery.sizeOf(context).height * 0.018,
        ),
        SizedBox(
          width: 312,
          child:
              Text('Compilation of case studies that evoke my sense of pride',
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
        ProjectItem(),
        SizedBox(
          height: 80,
        ),
        ProjectItem(
          isWeb: true,
        ),
        SizedBox(
          height: 80,
        ),
        ProjectItem(),
        SizedBox(
          height: 80,
        ),
        ProjectItem(
          isWeb: true,
        ),
        SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
