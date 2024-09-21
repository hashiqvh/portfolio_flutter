import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AutoScrollingListView extends StatefulWidget {
  final bool isReverse;
  const AutoScrollingListView({super.key, this.isReverse = false});

  @override
  _AutoScrollingListViewState createState() => _AutoScrollingListViewState();
}

class _AutoScrollingListViewState extends State<AutoScrollingListView> {
  final ScrollController _scrollController = ScrollController();
  Timer? _timer;
  final double _scrollSpeed = 50; // Pixels to scroll per second

  @override
  void initState() {
    super.initState();
    startAutoScroll();
  }

  List imgaes = [
    "flutter-icon",
    "google-firebase-icon",
    "node-js-icon",
    "express-js-icon",
    "github-icon",
    "visual-studio-code-icon",
    "postman-icon"
  ];
  void startAutoScroll() {
    const frameRate = Duration(milliseconds: 16); // Approximately 60 FPS

    _timer = Timer.periodic(frameRate, (timer) {
      if (_scrollController.hasClients) {
        double maxScroll = _scrollController.position.maxScrollExtent;
        double currentScroll = _scrollController.position.pixels;
        double delta = (_scrollSpeed / 1000) *
            frameRate.inMilliseconds; // Calculate scroll increment

        double nextScroll = currentScroll + delta; // Next position to scroll to

        if (nextScroll >= maxScroll) {
          // If end is reached, reset to start
          _scrollController.jumpTo(0);
        } else {
          _scrollController.jumpTo(nextScroll); // Smooth continuous scrolling
        }
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: widget.isReverse,
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      itemCount: imgaes.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          width: 80,
          height: 80,
          decoration: ShapeDecoration(
            color: const Color.fromARGB(255, 1, 15, 23),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFF0D2635)),
              borderRadius: BorderRadius.circular(16),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0xFF061118),
                blurRadius: 4,
                offset: Offset(1, 2),
                spreadRadius: 2,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SvgPicture.network("assets/${imgaes[index]}.svg"),
          ),
        ),
      ),
    );
  }
}
