import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:flutter/services.dart';
import 'package:group_project/data/data.dart';
import 'package:group_project/models/models.dart';
import 'package:group_project/screens/wishlist.dart';
import 'package:group_project/ui/base_widget.dart';
import 'package:group_project/widgets/drawer_widget.dart';
import 'package:group_project/widgets/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class HomePage extends StatefulWidget {
  static String id = 'homePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Size size;

  List<Products> recentlyAddedList = [];
  List recentlyAddedProducts() {
    for (int i = products.length - 3; i < products.length; i++) {
      if (i < products.length) {
        recentlyAddedList.add(products[i]);
        print(i);
      } else {
        break;
      }
    }
    return recentlyAddedList;
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    // App bar
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
          appBar: AppBar(
              elevation: 0,
            backgroundColor: Colors.teal,
            actions: [
              IconButton(
                icon: Icon(
                  EvaIcons.heart,
                    color: Colors.white,
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WishList()));
                },
              ),
            ],
          ),
          drawer: DrawerWidget(),
          //The body part
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 20),
                  child: Text.rich(
                    TextSpan(
                      text: 'Find your ',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      children: [
                        TextSpan(
                          text: 'products ',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'in a very ',
                        ),
                        TextSpan(
                          text: 'resonable ',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'price',
                        ),
                      ],
                    ),
                  )
                ),
                SearchBar(),
                ProductCarousel(
                  productTypeText: 'Recently Added',
                  products: products,
                  size: size,
                  category: 'Clothes',
                ),
                ProductCarousel(
                  productTypeText: 'Featured Products',
                  products: products,
                  size: size,
                  category: 'Laptops',
                ),
                ProductCarousel(
                  productTypeText: 'Popular Products',
                  products: products,
                  size: size,
                  category: 'Headphones',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
