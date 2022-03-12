import 'package:fashion_shop_app/config/style.dart';
import 'package:fashion_shop_app/widgets/logo_widget.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final bool loading;
  final String text;
  final bool debugBanner;
  LoadingWidget(
    this.loading, {
    this.text = 'Loading...',
    this.debugBanner = true,
  });

  @override
  Widget build(BuildContext context) {
    return loading
        ? Container(
            color: Color(0x7FFFFFFF),
            width: Style.width,
            height: Style.height,
            child: _getCenter(),
          )
        : _getCenter();
  }

  Widget _getCenter() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoWidget(
              size: 90,
              animate: loading,
              debugBanner: debugBanner,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              text,
              style: TextStyle(
                color: Style.primarySwatch.shade200,
              ),
            ),
          ],
        ),
      );
}
