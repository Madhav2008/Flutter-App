import 'package:fashion_shop_app/config/style.dart';
import 'package:fashion_shop_app/modules/home/product_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({
    Key? key,
    required this.index,
    required this.length,
    required this.model,
  }) : super(key: key);

  final double parentAllows = Style.parentAllows;
  final int index;
  final int length;
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: parentAllows,
      height: 380,
      color: Colors.grey.shade300,
      padding: EdgeInsets.only(
          top: index == 0 ? 10 : 7, bottom: index == (length - 1) ? 0 : 2),
      child: Container(
        height: 370,
        width: parentAllows,
        padding: EdgeInsets.only(bottom: 8),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 230,
              child: Row(
                children: [
                  Image.asset(
                    model.images[0],
                    width: ((70 * Style.width) / 100) - 2,
                    height: 230,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 4),
                  Expanded(
                    child: Container(
                      height: 230,
                      child: Column(
                        children: [
                          Image.asset(
                            model.images[1],
                            height: 230 / 2 - 2,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 4),
                          Stack(
                            children: [
                              Image.asset(
                                model.images[2],
                                height: 230 / 2 - 2,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  color: Colors.black.withOpacity(0.6),
                                  child: Center(
                                    child: Text(
                                      '+${model.images.length - 2}',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: parentAllows,
                padding: EdgeInsets.only(left: 10, right: 10, top: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Text(
                                      model.title,
                                      style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 11,
                                      ),
                                    ),
                                    model.isSponsered
                                        ? Container(
                                            margin: EdgeInsets.only(left: 10),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 8,
                                              vertical: 2,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: Colors.grey.shade500,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                            ),
                                            child: Text(
                                              'Sponsered',
                                              style: TextStyle(
                                                fontSize: 8,
                                                color: Colors.grey.shade500,
                                              ),
                                            ),
                                          )
                                        : SizedBox(width: 0),
                                  ],
                                ),
                              ),
                              FaIcon(
                                FontAwesomeIcons.heart,
                                color: model.isFav
                                    ? Style.primary
                                    : Colors.grey.shade500,
                              ),
                            ],
                          ),
                          // PRICE
                          Row(
                            children: [
                              Text(
                                '${model.price}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              model.isFreeDelivery
                                  ? Row(
                                      children: [
                                        SizedBox(width: 6),
                                        Container(
                                          width: 4,
                                          height: 4,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade300,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          'Free Delivery',
                                          style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    )
                                  : SizedBox(width: 0),
                            ],
                          ),
                          SizedBox(height: 6),
                          // RATING
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 46,
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '${model.rating}',
                                      style: TextStyle(
                                        color: Colors.green.shade600,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.star,
                                      color: Colors.green.shade600,
                                      size: 8,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                '${model.totalRating} Ratings',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                              model.isTrusted
                                  ? Row(
                                      children: [
                                        SizedBox(width: 6),
                                        Container(
                                          width: 4,
                                          height: 4,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade300,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        ),
                                        SizedBox(width: 6),
                                        Row(
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.shieldAlt,
                                              size: 12,
                                              color: Style.primary,
                                            ),
                                            SizedBox(width: 2),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 4,
                                                vertical: 2,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Style.primary
                                                    .withOpacity(0.4),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Text(
                                                'Trusted',
                                                style: TextStyle(
                                                  fontSize: 8,
                                                  color: Style.primary,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : SizedBox(width: 0),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // BUTTONS
                    Container(
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.download,
                                      size: 14,
                                      color: Colors.grey.shade600,
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Download',
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.facebook,
                                      size: 14,
                                      color: Colors.grey.shade600,
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Facebook',
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.share,
                                      size: 14,
                                      color: Colors.grey.shade600,
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Others',
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 40),
                          Container(
                            width: 120,
                            height: 35,
                            margin: EdgeInsets.symmetric(vertical: 9),
                            decoration: BoxDecoration(
                              color: Colors.green.shade700,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.whatsapp,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Share Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
