import 'package:fashion_shop_app/config/style.dart';
import 'package:fashion_shop_app/modules/home/product_model.dart';
import 'package:fashion_shop_app/widgets/filters_widget.dart';
import 'package:fashion_shop_app/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class FBodyBottom extends StatelessWidget {
  final List<ProductModel> model = ProductModel.mocks();

  FBodyBottom({
    Key? key,
  }) : super(key: key);

  final double parentAllows = Style.parentAllows;

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader(
      sticky: true,
      header: FiltersWidget(),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (ctx, i) {
            return ProductWidget(
                model: model[i], index: i, length: model.length);
          },
          childCount: model.length,
        ),
      ),
    );
  }
}
