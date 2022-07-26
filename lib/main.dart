import 'package:flutter/material.dart';
import 'package:product_pages/config/app_router.dart';

import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
