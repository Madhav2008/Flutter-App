import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FBottomNavigationBar extends StatelessWidget {
  final int selected;

  FBottomNavigationBar({
    this.selected = 0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.grey.shade50,
            Colors.grey.shade100,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          tileMode: TileMode.clamp,
          stops: [0.0, 0.8],
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            spreadRadius: 1,
            color: Colors.grey.shade300,
            offset: Offset(1, 0),
          )
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: FaIcon(
                FontAwesomeIcons.home,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Icon(
                Icons.category,
              ),
            ),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: FaIcon(
                FontAwesomeIcons.shoppingBag,
              ),
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: FaIcon(
                FontAwesomeIcons.users,
              ),
            ),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: FaIcon(
                FontAwesomeIcons.user,
              ),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
