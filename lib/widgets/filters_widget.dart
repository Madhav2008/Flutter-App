import 'package:fashion_shop_app/config/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FiltersWidget extends StatelessWidget {
  const FiltersWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: Style.parentAllows,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.grey.shade300,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 1,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.sort,
                  size: 14,
                  color: Colors.black,
                ),
                SizedBox(width: 4),
                Text(
                  'Sort',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 1,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Category',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 4),
                FaIcon(
                  FontAwesomeIcons.caretDown,
                  size: 14,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 1,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Gender',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 4),
                FaIcon(
                  FontAwesomeIcons.caretDown,
                  size: 14,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 1,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.filter,
                  size: 12,
                  color: Colors.black,
                ),
                SizedBox(width: 4),
                Text(
                  'Filters',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
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
