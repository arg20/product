import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String productName;
  final String brandName;
  final String category;
  final double rating;
  final String imageUrl;
  final double price;
  const Product(
      {required this.productName,
      required this.brandName,
      required this.category,
      required this.rating,
      required this.imageUrl,
      required this.price});
  @override
  // TODO: implement props
  List<Object?> get props =>
      [productName, brandName, category, rating, imageUrl, price];

  static List<Product> product = [
    const Product(
      productName: 'Galaxy S20',
      brandName: 'Samsung',
      category: 'Electronics',
      rating: 5.0,
      imageUrl:
          'https://images-eu.ssl-images-amazon.com/images/I/41ezRvTwcaL._SX300_SY300_QL70_FMwebp_.jpg',
      price: 39990.00,
    ),
    const Product(
      productName: '10R 5G',
      brandName: 'OnePlus',
      category: 'Electronics',
      imageUrl: 'https://m.media-amazon.com/images/I/716uVx3Wr5L._SX679_.jpg',
      price: 39990.00,
      rating: 5.0,
    ),
    const Product(
      productName: 'IdeaPad Slim 3 ',
      brandName: 'Lenovo ',
      category: 'Electronics',
      imageUrl: 'https://m.media-amazon.com/images/I/61s7sJEpsVL._SX679_.jpg',
      price: 39990.00,
      rating: 5.0,
    ),
    const Product(
      productName: '10R 5G',
      brandName: 'OnePlus',
      category: 'Electronics',
      imageUrl: 'https://m.media-amazon.com/images/I/716uVx3Wr5L._SX679_.jpg',
      price: 39990.00,
      rating: 5.0,
    ),
    const Product(
      productName: 'Rice Bran Health Oil',
      brandName: 'Fortune',
      category: 'Grocery',
      imageUrl: 'https://m.media-amazon.com/images/I/51SW5iGfKpL.jpg',
      price: 208.00,
      rating: 4.5,
    ),
    const Product(
      productName: 'Atta with Multigrains',
      brandName: 'Aashirvaad',
      category: 'Grocery',
      imageUrl: 'https://m.media-amazon.com/images/I/81ZZDWDpXqL._SX679_.jpg',
      price: 300.00,
      rating: 5.0,
    ),
  ];
}
