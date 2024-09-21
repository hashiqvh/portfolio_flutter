import 'package:flutter/material.dart';
import 'package:portfolio/core/responsive/responsive.dart';

class DetailDivider extends StatelessWidget {
  const DetailDivider({
    super.key,
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
              : EdgeInsets.zero,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 3,
        padding: const EdgeInsets.only(left: 1.50, right: 1.61),
        clipBehavior: Clip.antiAlias,
        decoration:
            BoxDecoration(color: Colors.white.withOpacity(0.1599999964237213)),
      ),
    );
  }
}
