import 'package:flutter/material.dart';
import 'package:product_pages/model/product_card.dart';
import 'package:product_pages/widgets/appBar.dart';
import 'package:product_pages/widgets/custom_navbar.dart';
import 'package:product_pages/widgets/sortfilterbar.dart';

import '../model/product_model.dart';
import '../widgets/category_bar.dart';

class ProductListPage extends StatelessWidget {
  // static const String routeName = '/productList';
  // static Route route(required String categoryName, {required categoryName}) {
  //   return MaterialPageRoute(
  //       settings: RouteSettings(name: routeName),
  //       builder: (_) => ProductListPage(categoryName: categoryName));
  // }

  const ProductListPage({required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.product
        .where((product) => product.category == categoryName)
        .toList();
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBarTop(),
        body: Column(
          children: [
            CategoryBar(category: categoryName),
            SortFilterBar(itemCount: categoryProducts.length),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: categoryProducts.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: categoryProducts[index]);
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: const CustomNavbar());
  }
}

// GridView.builder(
// padding: EdgeInsets.all(10),
// gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 1, childAspectRatio: 2.75),
// itemCount: categoryProducts.length,
// itemBuilder: (BuildContext context, int index) {
// return ProductCard(product: categoryProducts[index]);
// },
// ),
