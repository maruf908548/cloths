import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product(
      {this.image,
      this.title,
      this.price,
      this.bgColor = const Color(0xFFEFEFF2)});
}

List<Product> demo_product = [
  Product(
    image: "assets/images/product_0.png",
    title: "Long Sleeeve  Shirts",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Casual Henly Shirts",
    price: 99,
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem  Shirts",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Causal Nolin",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
];
