import 'package:flutter/material.dart';
import 'package:product_pages/model/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white, width: 1.0))),
      child: Row(
        children: [
          Container(
            height: 100,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(product.imageUrl)),
          ),
          Column(
            children: [
              Text(
                product.name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              ),
              Text(product.price.toString(),
                  style: TextStyle(color: Colors.white))
            ],
          )
        ],
      ),
    );
  }
}
