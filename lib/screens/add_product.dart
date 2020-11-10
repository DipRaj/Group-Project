import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:group_project/data/data.dart';

class AddProducts extends StatefulWidget {
  @override
  _AddProductsState createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'What do you want to sell?',
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              _categoryCard(
                FontAwesomeIcons.tshirt,
                'Clothing',
              ),
              _categoryCard(
                FontAwesomeIcons.building,
                'Real Estate',
              )
            ],
          ),
          Row(
            children: [
              _categoryCard(
                FontAwesomeIcons.laptop,
                'Computers',
              ),
              _categoryCard(
                FontAwesomeIcons.book,
                'Books',
              )
            ],
          ),
          Row(
            children: [
              _categoryCard(
                FontAwesomeIcons.table,
                'Furniture',
              ),
              _categoryCard(
                FontAwesomeIcons.camera,
                'Electrical Appliances',
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _categoryCard(icon, category) {
    return Expanded(
      child: Card(
        child: InkWell(
          splashColor: Colors.grey,
          onTap: () {
            print('');
          },
          child: Container(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                ),
                Text(
                  category,
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
