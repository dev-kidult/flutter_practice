import 'dart:async';

import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  Timer? timer;
  PageController controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      int currentPage = controller.page!.toInt();
      int nextPage = currentPage + 1;
      if (nextPage > 4) {
        nextPage = 0;
      }

      controller.animateToPage(nextPage, duration: const Duration(milliseconds: 400), curve: Curves.easeOut);
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [1, 2, 3, 4, 5]
            .map((e) => Image.asset(
                  'asset/img/carousel/image_$e.jpeg',
                  fit: BoxFit.cover,
                ))
            .toList(),
      ),
    );
  }
}
