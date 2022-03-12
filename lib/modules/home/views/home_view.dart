import 'package:fashion_shop_app/modules/home/controllers/home_controller.dart';
import 'package:fashion_shop_app/modules/home/widgets/f_app_bar.dart';
import 'package:fashion_shop_app/modules/home/widgets/f_body_bottom.dart';
import 'package:fashion_shop_app/widgets/f_bottom_navigation_bar.dart';
import 'package:fashion_shop_app/modules/home/widgets/f_body_top.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FBottomNavigationBar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            FAppBar(),
            FBodyTop(controller: controller),
            FBodyBottom(),
          ],
        ),
      ),
    );
  }
}
