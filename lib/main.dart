import 'package:fashion_shop_app/config/style.dart';
import 'package:fashion_shop_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Style.primarySwatch,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Style.primary,
          unselectedItemColor: Colors.black54,
          selectedIconTheme: IconThemeData(
            size: 16,
          ),
          unselectedIconTheme: IconThemeData(
            size: 16,
          ),
          selectedLabelStyle: TextStyle(
            fontSize: 10,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 10,
          ),
        ),
      ),
      builder: (cxt, child) => GestureDetector(
        onTap: () {
          WidgetsBinding.instance?.focusManager.primaryFocus?.unfocus();
        },
        child: child,
      ),
      initialRoute: Routes.SPLASH,
      getPages: Routes.pages,
    );
  }
}
