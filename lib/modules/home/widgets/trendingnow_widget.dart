import 'package:fashion_shop_app/config/style.dart';
import 'package:flutter/material.dart';

class TrendingNow extends StatelessWidget {
  const TrendingNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Trending Now',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
              Icon(
                Icons.power,
                color: Style.primary,
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 120,
            width: Style.parentAllows,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TrendingNowBox('Low Price Store'),
                SizedBox(width: 14),
                TrendingNowBox('Best Sellers'),
                SizedBox(width: 14),
                TrendingNowBox('Summer Collections'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TrendingNowBox extends StatelessWidget {
  final String text;
  const TrendingNowBox(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Style.primarySwatch.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -4,
            right: -4,
            child: Icon(Icons.circle, color: Colors.white),
          ),
          Positioned(
            bottom: -2,
            left: -4,
            child: Icon(
              Icons.format_align_justify,
              size: 20,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 4,
            left: 4,
            bottom: 4,
            right: 4,
            child: Center(
              child: Container(
                width: 94,
                height: 94,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(94),
                ),
                child: Center(
                  child: Text(
                    '$text',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Style.primary,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
