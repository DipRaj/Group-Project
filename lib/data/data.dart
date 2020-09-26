import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:group_project/models/models.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Category> categories = [
  Category(
    name: 'Accessories',
    icon: FontAwesomeIcons.tshirt,
  ),
  Category(
    name: 'AutoMobiles',
    icon: FontAwesomeIcons.car,
  ),
  Category(
    name: 'Beauty and Health',
    icon: FontAwesomeIcons.hatCowboy,
  ),
  Category(
    name: 'Business & Industrial',
    icon: FontAwesomeIcons.cashRegister,
  ),
  Category(
    name: 'Book and Learning',
    icon: FontAwesomeIcons.book,
  ),
  Category(
    name: 'Computer and Peripherals ',
    icon: FontAwesomeIcons.laptop,
  ),
  Category(
    name: 'Electronics ',
    icon: FontAwesomeIcons.tv,
  ),
  Category(
    name: 'Event and Happenings ',
    icon: FontAwesomeIcons.microphone,
  ),
  Category(
    name: 'Computer and Peripherals ',
    icon: FontAwesomeIcons.laptop,
  ),
  Category(
    name: 'Mobile and Accessories ',
    icon: FontAwesomeIcons.mobile,
  ),
  Category(
    name: 'Music Instrument ',
    icon: FontAwesomeIcons.guitar,
  ),
  Category(
    name: 'Pets and Pet care ',
    icon: FontAwesomeIcons.fish,
  ),
  Category(
    name: 'Real State',
    icon: FontAwesomeIcons.home,
  ),
  Category(
    name: 'Sports and Fitness',
    icon: FontAwesomeIcons.footballBall,
  ),
  Category(
    name: 'Toys and Video Games',
    icon: FontAwesomeIcons.gamepad,
  ),
  Category(
    name: 'Travel, Tours & Packages',
    icon: FontAwesomeIcons.plane,
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
  ),
];

List<Notification1> notification = [
  Notification1(
    imgUrl: 'images/iphone.jpg',
    notificationDesc:
        'This product of yours will expire in a week. Please renew the product.',
  ),
  Notification1(
    imgUrl: 'images/jacket.jpg',
    notificationDesc:
        'This product of yours will expire in a week. Please renew the product.',
  ),
  Notification1(
    imgUrl: 'images/house.jpg',
    notificationDesc:
        'This product of yours will expire in a week. Please renew the product.',
  ),
  Notification1(
    imgUrl: 'images/duke.jpeg',
    notificationDesc:
        'This product of yours will expire in a week. Please renew the product.',
  ),
  Notification1(
    imgUrl: 'images/jacket.jpg',
    notificationDesc:
        'This product of yours will expire in a week. Please renew the product.',
  ),
];

