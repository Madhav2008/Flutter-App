import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt _currentSlideIndex = 0.obs;
  int get slideIndex => _currentSlideIndex.value;
  set slideIndex(int v) => _currentSlideIndex.value = v;

  final List<String> slides = [
    'assets/images/slide.jpg',
    'assets/images/slide.jpg',
    'assets/images/slide.jpg',
    'assets/images/slide.jpg',
    'assets/images/slide.jpg',
    'assets/images/slide.jpg',
    'assets/images/slide.jpg',
    'assets/images/slide.jpg',
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
