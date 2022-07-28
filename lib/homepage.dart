import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:product_pages/model/category_model.dart';
import 'package:product_pages/productListPage.dart';
import 'package:product_pages/widgets/appBar.dart';
import 'package:product_pages/widgets/carouselcard.dart';
import 'package:product_pages/widgets/custom_navbar.dart';
import 'package:product_pages/widgets/reusablecard.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarTop(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                initialPage: 2,
                autoPlay: true,
              ),
              items: Category.categories
                  .map((category) => CarouselCard(category: category))
                  .toList(),
            )),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Explore",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ReusableCard(
                        imgName:
                            'assets/img_categorybutton/Electronics_img1.PNG',
                        categoryName: 'Electronics',
                        onPress: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductListPage(categoryName: "Electronics"),
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                      ReusableCard(
                        imgName: 'assets/img_categorybutton/fashion_img2.PNG',
                        categoryName: 'Fashion',
                        onPress: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductListPage(categoryName: 'Fashion'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                      ReusableCard(
                        imgName: 'assets/img_categorybutton/books_img3.PNG',
                        categoryName: 'Books',
                        onPress: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductListPage(categoryName: "Books"),
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      ReusableCard(
                        imgName: 'assets/img_categorybutton/sports_img4.PNG',
                        categoryName: 'Sports',
                        onPress: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductListPage(categoryName: "Sports"),
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                      ReusableCard(
                        imgName: 'assets/img_categorybutton/grocery_img5.PNG',
                        categoryName: 'Grocery',
                        onPress: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductListPage(categoryName: "Grocery"),
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                      ReusableCard(
                        imgName: 'assets/img_categorybutton/medicine_img6.PNG',
                        categoryName: 'Medicine',
                        onPress: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductListPage(categoryName: "Medicine"),
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavbar(),
    );
  }
}
