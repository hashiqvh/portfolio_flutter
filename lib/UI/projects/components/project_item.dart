import 'package:flutter/material.dart';
import 'package:portfolio/UI/projects/components/project_info.dart';
import 'package:portfolio/core/responsive/responsive.dart';

class ProjectItem extends StatelessWidget {
  final bool isWeb;
  const ProjectItem({
    super.key,
    this.isWeb = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
      child: Container(
        height: Responsive.isDesktop(context)
            ? MediaQuery.sizeOf(context).height * 0.5
            : MediaQuery.sizeOf(context).height * 0.7,
        constraints: BoxConstraints(
          maxHeight: Responsive.isDesktop(context)
              ? MediaQuery.sizeOf(context).height * 0.5
              : MediaQuery.sizeOf(context).height * 0.7,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 1, 15, 23),
          border: Border.all(
            color: Colors.white.withOpacity(0.10000000149011612),
          ),
          borderRadius: BorderRadius.circular(18),
          image: const DecorationImage(
            image: AssetImage('image.png'), // replace with your image path
            fit: BoxFit.cover, // ensures the image covers the container
          ),
        ),
        child: Responsive.isDesktop(context)
            ? Stack(
                children: [
                  Positioned(
                    left: MediaQuery.sizeOf(context).width * 0.33,
                    top: MediaQuery.sizeOf(context).height * 0.334,
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.27,
                      height: 718.42,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 100,
                              spreadRadius: 100,
                              color: Color.fromARGB(53, 167, 252, 238)),
                          BoxShadow(
                              blurRadius: 100,
                              spreadRadius: 100,
                              color: Color.fromARGB(71, 198, 252, 166)),
                        ],
                        borderRadius: BorderRadius.circular(456.03),
                      ),
                    ),
                  ),
                  isWeb
                      ? Positioned(
                          left: MediaQuery.sizeOf(context).width * 0.32,
                          top: MediaQuery.sizeOf(context).height * 0.02,
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.7,
                            height: MediaQuery.sizeOf(context).height * 0.7,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("img2.png"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        )
                      : Positioned(
                          left: MediaQuery.sizeOf(context).width * 0.37,
                          top: MediaQuery.sizeOf(context).height * 0.04,
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.19,
                            height: MediaQuery.sizeOf(context).height * 0.6,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("img1.png"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                  Positioned(
                    left: MediaQuery.sizeOf(context).width * 0.04,
                    top: MediaQuery.sizeOf(context).height * 0.05,
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.2,
                      child: const ProjectInfo(),
                    ),
                  ),
                  Positioned(
                      bottom: MediaQuery.sizeOf(context).height * 0.04,
                      left: MediaQuery.sizeOf(context).width * 0.04,
                      child: Container(
                        width: 202.58,
                        height: 48,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x14000000),
                              blurRadius: 24,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'View Case Study',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .merge(const TextStyle(
                                  color: Color(0xFF081822),
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w700,
                                )),
                          ),
                        ),
                      ))
                ],
              )
            : Stack(
                children: [
                  Positioned(
                    left: MediaQuery.sizeOf(context).width * 0.04,
                    right: MediaQuery.sizeOf(context).width * 0.04,
                    top: MediaQuery.sizeOf(context).height * 0.04,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ProjectInfo(),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.033,
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: MediaQuery.sizeOf(context).height * 0.048,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x14000000),
                                blurRadius: 24,
                                offset: Offset(0, 2),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'View Case Study',
                              style: TextStyle(
                                color: Color(0xFF081822),
                                fontSize: 16,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w700,
                                height: 0.07,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 579.95,
                    child: Container(
                      width: 339,
                      height: 573.05,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 100,
                              spreadRadius: 100,
                              color: Color.fromARGB(53, 123, 163, 156)),
                          BoxShadow(
                              blurRadius: 100,
                              spreadRadius: 100,
                              color: Color.fromARGB(71, 198, 252, 166)),
                        ],
                        borderRadius: BorderRadius.circular(456.03),
                      ),
                    ),
                  ),
                  isWeb
                      ? Positioned(
                          left: MediaQuery.sizeOf(context).width * 0.04,
                          top: MediaQuery.sizeOf(context).height * 0.3,
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.2,
                            height: MediaQuery.sizeOf(context).height * 0.8,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("img2.png"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        )
                      : Positioned(
                          left: 0,
                          right: 0,
                          top: MediaQuery.sizeOf(context).height * 0.42,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.55,
                              height: MediaQuery.sizeOf(context).height * 0.7,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("img1.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                ],
              ),
      ),
    );
  }
}
