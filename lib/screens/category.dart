import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:group_project/data/data.dart';
import 'package:group_project/widgets/navbar_widget.dart';

class CategoryPage extends StatefulWidget {
  static String id = 'categoryPage';

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Categories',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      categories[index].category,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    trailing: Icon(
                      categories[index].icon,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: categories.length,
        ),
      ),
    );
  }
}
