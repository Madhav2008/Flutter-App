import 'dart:async';

import 'package:fashion_shop_app/config/style.dart';
import 'package:fashion_shop_app/modules/home/slide_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarouselWidget extends StatefulWidget {
  final List<SlideModel> slides = SlideModel.mocks();

  CarouselWidget({Key? key}) : super(key: key);

  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final double width = Style.width;
  int currentSlide = 0;
  late PageController carouselController;

  @override
  void initState() {
    carouselController = PageController(initialPage: currentSlide);

    Timer.periodic(6.seconds, (timer) {
      setState(() {
        if (currentSlide == widget.slides.length - 1) {
          currentSlide = 0;
        } else {
          currentSlide++;
        }
      });
      carouselController.animateToPage(
        currentSlide,
        duration: 600.milliseconds,
        curve: Curves.bounceInOut,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 192,
      width: width,
      child: Column(
        children: [
          Container(
            height: 162,
            width: width,
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    physics: ClampingScrollPhysics(),
                    controller: carouselController,
                    onPageChanged: (i) {
                      setState(() {
                        currentSlide = i;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.slides.length,
                    itemBuilder: (ctx, i) {
                      return Container(
                        height: 150,
                        width: width - 28,
                        margin: EdgeInsets.symmetric(horizontal: 14),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(widget.slides[i].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 4,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        widget.slides.length,
                        (i) => Container(
                              height: 4,
                              width: currentSlide == i ? 14 : 8,
                              margin: EdgeInsets.symmetric(horizontal: 3),
                              decoration: BoxDecoration(
                                color: currentSlide == i
                                    ? Style.primary
                                    : Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
