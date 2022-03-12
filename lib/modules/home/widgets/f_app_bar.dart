import 'package:fashion_shop_app/config/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FAppBar extends StatelessWidget {
  const FAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leadingWidth: 46,
      leading: Container(
        height: 30,
        margin: EdgeInsets.only(left: 6),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: IconButton(
            icon: Icon(Icons.person),
            iconSize: 24,
            onPressed: null,
          ),
        ),
      ),
      title: Container(
        height: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Anand Pilania',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 4),
            Container(
              height: 18,
              padding: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.shade300,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.backpack,
                    size: 12,
                    color: Style.primarySwatch.shade300,
                  ),
                  Text(
                    'Beginner',
                    style: TextStyle(
                      fontSize: 8,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.heart,
            color: Colors.black54,
          ),
          iconSize: 18,
          onPressed: null,
        ),
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.bellSlash,
            color: Colors.black54,
          ),
          iconSize: 18,
          onPressed: null,
        ),
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.shoppingBag,
            color: Colors.black54,
          ),
          iconSize: 18,
          onPressed: null,
        ),
      ],
      bottom: PreferredSize(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(7),
              height: 49,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: Colors.black54,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      child: Icon(
                        Icons.search,
                        color: Colors.grey.shade500,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 30,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                          left: 2,
                          right: 10,
                        ),
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 13,
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            hintText: 'Search...',
                            hintStyle: TextStyle(
                              color: Colors.black54,
                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            width: 1,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      width: 32,
                      height: 32,
                      child: Icon(
                        Icons.camera,
                        color: Colors.black54,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
            ),
          ],
        ),
        preferredSize: Size.fromHeight(50),
      ),
      pinned: true,
      floating: true,
    );
  }
}
