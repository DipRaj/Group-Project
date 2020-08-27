import 'package:flutter/material.dart';
import 'package:group_project/models/models.dart';

class CategoryWidget extends StatelessWidget {
  final List<Category> categories;
  final Function onPressed;

  const CategoryWidget({Key key, this.categories, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final Category category = categories[index];
          return Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: GestureDetector(
              child: Container(
                width: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Color(0xFFE7EBEE),
                ),
                child: Icon(
                  category.icon,
                  color: Colors.grey,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
