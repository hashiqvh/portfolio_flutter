import 'package:flutter/material.dart';
import 'package:portfolio/core/responsive/responsive.dart';

class ConnectPage extends StatelessWidget {
  const ConnectPage({super.key});

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
                  : EdgeInsets.all(0.0),
      child: Responsive.isDesktop(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width - 100,
                  height: 1,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.10999999940395355),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.019,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Twitter',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.800000011920929),
                        fontSize: 14,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'LinkedIN',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.800000011920929),
                        fontSize: 14,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Instagram',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.800000011920929),
                        fontSize: 14,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.019,
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width - 100,
                  height: 1,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.10999999940395355),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.019,
                ),
                Text(
                  'Twitter',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.800000011920929),
                    fontSize: 14,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.019,
                ),
                Text(
                  'LinkedIN',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.800000011920929),
                    fontSize: 14,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.019,
                ),
                Text(
                  'Instagram',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.800000011920929),
                    fontSize: 14,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.019,
                ),
              ],
            ),
    );
  }
}
