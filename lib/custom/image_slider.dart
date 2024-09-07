// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'dart:async';

class TheImageSlider extends StatefulWidget {
  final List<String> imageUrls;
  final Duration interval;

  const TheImageSlider({
    Key? key,
    required this.imageUrls,
    this.interval = const Duration(seconds: 3),
  }) : super(key: key);

  @override
  _TheImageSliderState createState() => _TheImageSliderState();
}

class _TheImageSliderState extends State<TheImageSlider> {
  int currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
    Timer.periodic(widget.interval, (timer) {
      if (currentIndex < widget.imageUrls.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
      pageController.animateToPage(currentIndex,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView.builder(
        controller: pageController,
        itemCount: widget.imageUrls.length,
        itemBuilder: (context, index) {
          return Image.network(
            widget.imageUrls[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}