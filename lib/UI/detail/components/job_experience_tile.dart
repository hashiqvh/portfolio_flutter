import 'package:flutter/material.dart';
import 'package:portfolio/core/responsive/responsive.dart';

class JobExperienceTitle extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String duration;
  final String description;
  const JobExperienceTitle({
    super.key,
    required this.companyName,
    required this.jobTitle,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 258.18,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '$jobTitle, ',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: companyName,
                            style: const TextStyle(
                              color: Color(0xFFC6FCA6),
                              fontSize: 18,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      duration,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.800000011920929),
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 301.50,
                child: Text(
                  description,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.800000011920929),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 258.18,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '$jobTitle, ',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: companyName,
                            style: const TextStyle(
                              color: Color(0xFFC6FCA6),
                              fontSize: 18,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Text(
                      duration,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.800000011920929),
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              SizedBox(
                width: 301.50,
                child: Text(
                  description,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.800000011920929),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          );
  }
}
