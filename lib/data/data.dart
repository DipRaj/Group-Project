import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:group_project/models/models.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Category> categories = [
  Category(
    name: 'Cars',
    icon: EvaIcons.headphones,
  ),
  Category(
    name: 'Bikes',
    icon: FontAwesomeIcons.car,
  ),
  Category(
    name: 'Headphones',
    icon: FontAwesomeIcons.motorcycle,
  ),
  Category(
    name: 'Laptops',
    icon: FontAwesomeIcons.headphones,
  ),
  Category(
    name: 'Building',
    icon: FontAwesomeIcons.building,
  ),
  Category(
    name: 'Building',
    icon: FontAwesomeIcons.laptop,
  ),
];

List<Products> products = [
  Products(
    productName: 'Sweat Shirt',
    price: 5000,
    imgUrl: 'images/sweat-shirt.jpg',
    isUsed: true,
    productDesc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  ),
  Products(
    productName: 'Hoodie',
    price: 2000,
    imgUrl: 'images/hoodie.jpg',
    isUsed: true,
    productDesc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  ),
  Products(
    productName: 'Laptop',
    price: 100000,
    imgUrl: 'images/laptops.jpg',
    isUsed: false,
    productDesc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  ),
  Products(
    productName: 'Jacket',
    price: 1000,
    imgUrl: 'images/jacket.jpg',
    isUsed: false,
    productDesc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  )
];
