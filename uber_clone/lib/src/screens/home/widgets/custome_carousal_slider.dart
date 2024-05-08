import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';

class CustomCarousalSlider extends StatelessWidget {
  const CustomCarousalSlider({super.key, required this.item});

  final List<Widget> item;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1,initialPage: 0,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 2000),
        autoPlayInterval: const Duration(milliseconds: 4000),
        enlargeCenterPage: false,
        enlargeFactor: 1,
        onPageChanged: (index, _) => controller.updateCarousalIndex(index),
      ),
      // items: item.map((url) => Image.asset(url)).toList(),
      items: item.map((e) =>  e,).toList(),
    );
  }
}
