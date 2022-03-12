import 'package:fashion_shop_app/modules/home/controllers/home_controller.dart';
import 'package:fashion_shop_app/widgets/carousel_widget.dart';
import 'package:fashion_shop_app/widgets/category_widget.dart';
import 'package:fashion_shop_app/modules/home/widgets/top_picks_widget.dart';
import 'package:fashion_shop_app/modules/home/widgets/trendingnow_widget.dart';
import 'package:fashion_shop_app/unused/f_sliver_app_bar.dart';
import 'package:fashion_shop_app/widgets/f_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FBottomNavigationBar(),
      body: SafeArea(
        child: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              FSliverAppBar(),
            ];
          },
          body: Container(
            padding: EdgeInsets.symmetric(
              vertical: 14,
            ),
            child: SingleChildScrollView(
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
          ),
        ),
      ),
    );
  }
}
