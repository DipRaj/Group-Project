import 'package:flutter/material.dart';
import 'package:group_project/models/models.dart';
import 'package:group_project/constants.dart';

class CategoryPage extends StatelessWidget {
  static String id = 'categoryPage';

  final List<Category> categories;
  final Function onPressed;

  const CategoryPage({Key key, this.categories, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'Categories',
            style: widgetTitleTextStyle,
          ),
        ),
        Container(
          height: 50.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(
                  categories[index].icon,
                ),
                title: Text(
                  categories[index].name,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
