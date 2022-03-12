import 'package:fashion_shop_app/routes.dart';
import 'package:fashion_shop_app/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Get.offAllNamed(Routes.HOME);
    });

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: LoadingWidget(
            false,
            debugBanner: true,
          ),
        ),
      ),
    );
  }
}
