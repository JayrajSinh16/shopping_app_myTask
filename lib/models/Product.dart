import 'package:flutter/material.dart';


class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demoProduct = [
  Product(
    image: "assets/images/product_0.png",
    title: "Long Sleeve Shirts",
    price: 1099,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Casual Henley Shirts",
    price: 1699,
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirts",
    price: 4199,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Casual Nolin",
    price: 1349,
    bgColor: const Color(0xFFEEEEED),
  ),
];




List<Product> demoProductPopular = [
  Product(
    image: "assets/images/product_01.png",
    title: "Long Sleeve Shirts",
    price: 1099,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/product_02.png",
    title: "Casual Henley Shirts",
    price: 1699,
  ),
  Product(
    image: "assets/images/product_03.png",
    title: "Curved Hem Shirts",
    price: 4199,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_04.png",
    title: "Casual Nolin",
    price: 1349,
    bgColor: const Color(0xFFEEEEED),
  ),
];
