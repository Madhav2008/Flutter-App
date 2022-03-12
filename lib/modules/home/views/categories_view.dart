import 'package:fashion_shop_app/config/style.dart';
import 'package:fashion_shop_app/modules/home/category_model.dart';
import 'package:fashion_shop_app/widgets/f_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CategoriesView extends GetView {
  final List<CategoryModel> model = CategoryModel.mocks();
  final int selectedCategory = 0;

  final double parentAllows = Style.parentAllows;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: FBottomNavigationBar(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'CATEGORIES',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade800,
          ),
        ),
        bottom: PreferredSize(
          child: Container(
            width: parentAllows,
            height: 1,
            color: Colors.grey.shade300,
          ),
          preferredSize: Size.fromHeight(1),
        ),
        actions: [
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.search,
              color: Colors.grey.shade800,
              size: 16,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.heart,
              color: Colors.grey.shade800,
              size: 16,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.cartPlus,
              color: Colors.grey.shade800,
              size: 16,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Row(
            children: [
              Container(
                width: 80,
                height: parentAllows,
                color: Colors.grey.shade200,
                child: ListView.builder(
                    itemCount: model.length,
                    itemBuilder: (ctx, i) {
                      return Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: i == selectedCategory
                              ? Colors.white
                              : Colors.transparent,
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.google,
                              color: i == selectedCategory
                                  ? Style.primary
                                  : Colors.grey.shade600,
                              size: 18,
                            ),
                            SizedBox(height: 6),
                            Text(
                              '${model[i].title}',
                              style: TextStyle(
                                color: i == selectedCategory
                                    ? Style.primary
                                    : Colors.grey.shade600,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
