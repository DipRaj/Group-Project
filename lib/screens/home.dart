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
          backgroundColor: Colors.white70,
          //leading:
          //  IconButton(icon: Icon(FontAwesomeIcons.bars), onPressed: null),
          // centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(FontAwesomeIcons.search), onPressed: null),
            IconButton(icon: Icon(FontAwesomeIcons.heart), onPressed: null),
          ],
        ),

        drawer: Container(
          width: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(45),
              bottomRight: Radius.circular(45),
            ),
            child: Drawer(
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  color: Colors.white70,
                  child: new ListView(
                    children: <Widget>[
                      MyExtractedWidget(
                        theIcon: Icons.home,
                        theText: "HOME",
                      ),
                      MyExtractedWidget(
                        theIcon: Icons.shopping_basket,
                        theText: "CATEGORIES",
                      ),
                      MyExtractedWidget(
                        theIcon: Icons.notifications_active,
                        theText: "NOTIFICATION",
                      ),
                      MyExtractedWidget(
                        theIcon: Icons.check_box,
                        theText: "SAFETY TIPS",
                      ),
                      MyExtractedWidget(
                        theIcon: Icons.question_answer,
                        theText: "FAQ",
                      ),
                      MyExtractedWidget(
                        theIcon: Icons.note_add,
                        theText: "AD POSTING RULES ",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        // The body part

        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Special For You',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
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

class MyExtractedWidget extends StatelessWidget {
  final IconData theIcon;
  final String theText;
  MyExtractedWidget({this.theIcon, this.theText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        child: ListTile(
          leading: Icon(
            theIcon,
            size: 30,
          ),
          title: Text(
            theText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
