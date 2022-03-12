import 'package:fashion_shop_app/modules/home/controllers/home_controller.dart';
import 'package:fashion_shop_app/widgets/carousel_widget.dart';
import 'package:fashion_shop_app/widgets/category_widget.dart';
import 'package:fashion_shop_app/modules/home/widgets/top_picks_widget.dart';
import 'package:fashion_shop_app/modules/home/widgets/trendingnow_widget.dart';
import 'package:flutter/material.dart';

class FBodyTop extends StatelessWidget {
  const FBodyTop({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(
          top: 14,
        ),
        child: Column(
          children: [
            CategoryWidget(),
            SizedBox(height: 18),
            CarouselWidget(),
            TrendingNow(),
            SizedBox(
              height: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            TopPicks(),
            SizedBox(
              height: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
