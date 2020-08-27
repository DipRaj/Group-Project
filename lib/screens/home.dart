// import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:group_project/models/category.dart';
import 'package:group_project/data/data.dart';
import 'package:group_project/widgets/carousel_widget.dart';
import 'package:group_project/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    // App bar
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading:
              IconButton(icon: Icon(FontAwesomeIcons.bars), onPressed: null),
          centerTitle: true,
          actions: [
            IconButton(icon: Icon(FontAwesomeIcons.search), onPressed: null),
            IconButton(icon: Icon(FontAwesomeIcons.heart), onPressed: null),
          ],
        ),

        // The body part

        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Special For You',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                CarouselImage(),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Categories',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                CategoryWidget(
                  categories: categories,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Popular Now',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                ProductsWidget(
                  products: products,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
