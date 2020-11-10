import 'package:group_project/models/models.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:group_project/models/wishlist.dart';

List<Category> categories = [
  Category(
    category: 'Clothes',
    icon: FontAwesomeIcons.tshirt,
  ),
  Category(
    category: 'Laptops',
    icon: FontAwesomeIcons.laptop,
  ),
  Category(
    category: 'Headphones',
    icon: FontAwesomeIcons.headphones,
  ),
  Category(
    category: 'Building',
    icon: FontAwesomeIcons.building,
  ),
];

List<Products> products = [
  Products(
      productName: 'Sweat Shirt',
      price: 5000,
      images: [
        'images/sweat-shirt.jpg',
        'images/sweat-shirt.jpg'
      ],
      isUsed: true,
      productDesc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      category: 'Clothes',
      views: 0,
  ),
  Products(
    productName: 'Hoodie',
    price: 2000,
    images: [
      'images/hoodie.jpg',
      'images/hoodie.jpg',
    ],
    isUsed: true,
    productDesc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    category: 'Clothes',
    views: 0,
  ),
  Products(
    productName: 'Mac book pro',
    price: 100000,
    images: [
      'images/laptops.jpg',
      'images/laptops.jpg'
    ],
    isUsed: false,
    productDesc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    category: 'Laptops',
    views: 0,
  ),
  Products(
    productName: 'Mac book pro',
    price: 100000,
    images: [
      'images/laptops.jpg',
      'images/laptops.jpg'
    ],
    isUsed: false,
    productDesc:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    category: 'Laptops',
    views: 0,
  ),
  Products(
    productName: 'Jacket',
    price: 1000,
    images: [
      'images/jacket.jpg',
      'images/jacket.jpg'
    ],
    isUsed: false,
    productDesc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    category: 'Clothes',
    views: 0,
  ),
  Products(
    productName: 'Iphone XR',
    price: 100000,
    images: [
      'images/iphone.jpg',
      'images/iphone.jpg'
    ],
    isUsed: false,
    productDesc:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    category: 'Mobiles',
    views: 0,
  ),
  Products(
    productName: 'JBL Headphone',
    price: 10000,
    images: [
      'images/headphone.jpg',
      'images/headphone.jpg'
    ],
    isUsed: false,
    productDesc:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    category: 'Headphones',
    views: 0,
  ),
  Products(
    productName: 'JBL Headphone',
    price: 10000,
    images: [
      'images/headphones.jpg',
      'images/headphones.jpg'
    ],
    isUsed: false,
    productDesc:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    category: 'Headphones',
    views: 0,
  )
];

List<Products>watchList;

List<Notification>notifications = [
  Notification(
    imgUrl: 'images/iphone.jpg',
    notificationDesc:
    'This product of yours will expire in a week. Please renew the product.',
  ),
  Notification(
    imgUrl: 'images/jacket.jpg',
    notificationDesc:
    'This product of yours will expire in a week. Please renew the product.',
  ),
  Notification(
    imgUrl: 'images/house.jpg',
    notificationDesc:
    'This product of yours will expire in a week. Please renew the product.',
  ),
  Notification(
    imgUrl: 'images/duke.jpeg',
    notificationDesc:
    'This product of yours will expire in a week. Please renew the product.',
  ),
  Notification(
    imgUrl: 'images/jacket.jpg',
    notificationDesc:
    'This product of yours will expire in a week. Please renew the product.',
  ),
];

List<User>users = [
  User('DipRaj', 'images/IMG_7249.JPG', '123456', 9818605887, 'Itahari', 'B.P Chowk', 'dipurai815@gmail.com'),
  User('Ram Rai', 'images/jacket.jpg','123456', 9818605887, 'Itahari', 'B.P Chowk', 'dipurai815@gmail.com'),
  User('Aman Chaudhary', 'images/IMG_7249.JPG', '123456', 9818605887, 'Itahari', 'B.P Chowk', 'dipurai815@gmail.com'),
];

List<Message>messages = [
  Message(
    user: users[0],
    message: 'Hello, Sir. I want to buy your product. Can we talk?',
  ),
  Message(
    user: users[2],
    message: 'Hello, Sir. I want to buy your product. Can we talk?',
  ),
  Message(
    user: users[1],
    message: 'Hello, Sir. I want to buy your product. Can we talk?',
  ),
  Message(
    user: users[1],
    message: 'Hello, Sir. I want to buy your product. Can we talk?',
  ),
  Message(
    user: users[2],
    message: 'Hello, Sir. I want to buy your product. Can we talk?',
  ),
];

List<Cart> cart = [
  Cart(
    uId: '#u1',
    productId: '#p1',
    quantity: 1,
  ),
  Cart(
    uId: '#u2',
    productId: '#p2',
    quantity: 2,
  ),
  Cart(
    uId: '#u3',
    productId: '#p3',
    quantity: 3,
  ),
];

List<Stock>stock = [
  Stock(
    uId: '#u1',
    productId: '#p1',
    isActive: true,
    isExpired: false,
    isSold: false,
  ),
  Stock(
    uId: '#u1',
    productId: '#p2',
    isActive: true,
    isExpired: false,
    isSold: false,
  ),
  Stock(
    uId: '#u2',
    productId: '#p3',
    isActive: true,
    isExpired: false,
    isSold: false,
  ),
  Stock(
    uId: '#u2',
    productId: '#p4',
    isActive: true,
    isExpired: false,
    isSold: false,
  ),
];

List<WishList1> wishProduct = [
  WishList1(
    imgUrl: 'images/hoodie.jpg',
    wishDesc: 'This is a hoodie',
    subTitle: 'Subtitle'
  ),
];
