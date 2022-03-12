import 'package:fashion_shop_app/config/style.dart';
import 'package:fashion_shop_app/modules/home/category_model.dart';
import 'package:fashion_shop_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    Key? key,
  }) : super(key: key);

  final List<CategoryModel> model = CategoryModel.mocks();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        itemCount: model.length,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (ctx, i) {
          return GestureDetector(
              child: Container(
                width: 80,
                height: 50,
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Style.primarySwatch.shade200,
                      ),
                      child: CircleAvatar(
                        child: Image.asset(model[i].image),
                        backgroundColor: Style.primarySwatch.shade200,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      model[i].title,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.CATEGORIES);
              });
        },
      ),
    );
  }
}
