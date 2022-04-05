import 'package:app_shop/app_controller.dart';
import 'package:app_shop/pages/checkout_page.dart';
import 'package:app_shop/pages/config_page.dart';
import 'package:app_shop/pages/home_page.dart';
import 'package:app_shop/pages/sobre.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: AppController.instance.isDarkTheme
              ? Brightness.dark
              : Brightness.light,
        ),
        initialRoute: '/home',
        routes: {
          '/home': (context) => HomePage(),
          '/sobre': (context) => Sobre(),
          '/config': (context) => Config(),
          '/checkout': (context) => CheckOutPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
