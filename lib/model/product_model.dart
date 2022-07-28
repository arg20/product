import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  const Product(
      {required this.name,
      required this.category,
      required this.imageUrl,
      required this.price});
  @override
  // TODO: implement props
  List<Object?> get props => [name, category, imageUrl, price];

  static List<Product> product = [
    const Product(
      name: 'Samsung Galaxy S20',
      category: 'Electronics',
      imageUrl:
          'https://images-eu.ssl-images-amazon.com/images/I/41ezRvTwcaL._SX300_SY300_QL70_FMwebp_.jpg',
      price: 39990.00,
    ),
    const Product(
      name: 'OnePlus 10R 5G',
      category: 'Electronics',
      imageUrl: 'https://m.media-amazon.com/images/I/716uVx3Wr5L._SX679_.jpg',
      price: 39990.00,
    ),
    const Product(
      name: 'Lenovo IdeaPad Slim 3 Intel Core i3 11th Gen 14"',
      category: 'Electronics',
      imageUrl: 'https://m.media-amazon.com/images/I/61s7sJEpsVL._SX679_.jpg',
      price: 39990.00,
    ),
    const Product(
      name: 'Fortune Rice Bran Health Oil, 1l Pouch',
      category: 'Grocery',
      imageUrl: 'https://m.media-amazon.com/images/I/51SW5iGfKpL.jpg',
      price: 208.00,
    ),
    const Product(
      name: 'Aashirvaad Atta with Multigrains, 5kg pack',
      category: 'Grocery',
      imageUrl: 'https://m.media-amazon.com/images/I/81ZZDWDpXqL._SX679_.jpg',
      price: 300.00,
    ),
  ];
}
