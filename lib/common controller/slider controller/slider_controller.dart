import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderControllerOfDetails extends GetxController {
  final PageController pageController = PageController();

  final List<String> imageUrls = [
    'https://static1.topspeedimages.com/wordpress/wp-content/uploads/2022/12/2019-alfa-romeo-4c-spider.jpg',
    'https://imgd.aeplcdn.com/370x208/n/cw/ec/130591/fronx-exterior-right-front-three-quarter-109.jpeg?isig=0&q=80',
    'https://imgd.aeplcdn.com/370x208/n/cw/ec/115777/ertiga-exterior-right-front-three-quarter-5.jpeg?isig=0&q=80',
  ];

  @override
  void onInit() {
    super.onInit();
    // Removed startSlider because we don't want automatic sliding
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
