import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lighttheme(context),
      darkTheme: MyTheme.darktheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginroutes,
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.homeroutes: (context) => Homepage(),
        MyRoutes.loginroutes: (context) => Loginpage(),
        MyRoutes.cartroutes: (context) => CartPage(),
      },
    );
  }
}
