import 'package:flutter/material.dart';
import 'package:product_pages/productMgmtPages/homepage.dart';
import 'package:product_pages/productMgmtPages/productListPage.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => ProductListPage(categoryName: "categoryName"),
      },
    ),
  );
}
