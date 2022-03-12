import 'package:fashion_shop_app/config/style.dart';
import 'package:fashion_shop_app/modules/home/top_pick_model.dart';
import 'package:flutter/material.dart';

class TopPicks extends StatelessWidget {
  final List<TopPickModel> model = TopPickModel.mocks();

  TopPicks({Key? key}) : super(key: key);

  final double parentAllows = Style.parentAllows;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 14,
        bottom: 7,
      ),
      width: parentAllows,
      height: 155,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Text(
              'Top Picks',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 14),
          Container(
            width: parentAllows,
            height: 100,
            child: ListView.builder(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: model.length,
                itemBuilder: (ctx, i) {
                  return Container(
                    width: 60,
                    height: 100,
                    margin: EdgeInsets.symmetric(
                      horizontal: 14,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(
                              image: AssetImage(model[i].image),
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          model[i].title,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
