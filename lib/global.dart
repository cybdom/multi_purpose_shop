import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

String lorem =
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas at, aspernatur blanditiis veritatis nam ea corrupti architecto, ipsum dolor sunt facere quasi, laborum fugiat earum laudantium adipisci corporis esse magnam.";

class Product {
  final String title, description, price, img;

  Product(
      {required this.title,
      required this.description,
      required this.price,
      required this.img});
}

List<Product> productsList = [
  Product(
    description: lorem,
    title: "Brown Sugar",
    price: "\$8.99",
    img:
        "https://www.journee-mondiale.com//medias/grande/images/journee/hamburger.png",
  ),
  Product(
    description: lorem,
    title: "Cheesy Jalapenos",
    price: "\$5.93",
    img:
        "https://www.pngkey.com/png/full/387-3872908_4-jalapenos-croquette.png",
  ),
  Product(
    description: lorem,
    title: "Brown Sugar",
    price: "\$6.99",
    img: "https://www.stickpng.com/assets/images/580b57fcd9996e24bc43c1a8.png",
  ),
  Product(
    description: lorem,
    title: "Speed Burger",
    price: "\$8.99",
    img:
        "https://freepngimg.com/thumb/sandwich/74861-king-hamburger-food-ribs-fries-fast-burger.png",
  ),
  Product(
    description: lorem,
    title: "Brown Sugar",
    price: "\$8.99",
    img:
        "http://french.peopledaily.com.cn/NMediaFile/2016/0206/FOREIGN201602060850000565854639675.png",
  ),
];

class Category {
  final String title;
  final IconData icon;

  Category({required this.title, required this.icon});
}

List<Category> cats = [
  Category(
    icon: FontAwesomeIcons.burger,
    title: "Hamburger",
  ),
  Category(
    icon: FontAwesomeIcons.pizzaSlice,
    title: "Pizza",
  ),
  Category(
    icon: FontAwesomeIcons.mugSaucer,
    title: "Coffee",
  ),
  Category(
    icon: FontAwesomeIcons.glassWater,
    title: "Milk",
  ),
  Category(
    icon: FontAwesomeIcons.glassWater,
    title: "Tea",
  ),
];
