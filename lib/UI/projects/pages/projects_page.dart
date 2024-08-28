import 'package:flutter/material.dart';
import 'package:portfolio/UI/projects/components/project_item.dart';
import 'package:portfolio/core/responsive/responsive.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
