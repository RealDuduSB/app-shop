import 'package:app_shop/pages/home.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
