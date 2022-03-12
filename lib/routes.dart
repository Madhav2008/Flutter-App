import 'package:fashion_shop_app/modules/home/bindings/home_binding.dart';
import 'package:fashion_shop_app/modules/home/views/categories_view.dart';
import 'package:fashion_shop_app/modules/home/views/category_view.dart';
import 'package:fashion_shop_app/modules/home/views/home_view.dart';
import 'package:fashion_shop_app/modules/splash/views/splash_view.dart';
import 'package:get/get.dart';

class Routes {
  static const String SPLASH = '/splash';
  static const String HOME = '/home';
  static const String CATEGORIES = '/categories';

  static List<GetPage> pages = [
    GetPage(
      name: SPLASH,
      page: () => SplashView(),
    ),
    GetPage(
      name: HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: CATEGORIES,
      page: () => CategoriesView(),
      children: [
        GetPage(
          name: ':category',
          page: () => CategoryView(),
        ),
      ],
    ),
  ];
}
