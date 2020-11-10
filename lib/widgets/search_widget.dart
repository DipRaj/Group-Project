import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:group_project/ui/size_config.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      child: Container(
//        height: 65,
        constraints: BoxConstraints(
          maxHeight: 35 * SizeConfig.heightMultiplier,
          minHeight: 30 * SizeConfig.heightMultiplier,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
//          boxShadow: [
//            BoxShadow(
//              color: Colors.grey[400],
//              offset: Offset(1, 1),
//              blurRadius: 6.0,
//            ),
//          ],
          color: Colors.grey[200],
        ),
        alignment: Alignment.center,
        child: ListTile(
          leading: Icon(
            Icons.search,
            color: Colors.black,
          ),
          title: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search Products....',
              hintStyle: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//child: Padding(
//padding: const EdgeInsets.symmetric(horizontal: 8.0),
//child: TextField(
//cursorColor: Colors.grey,
//decoration: InputDecoration(
//border: InputBorder.none,
//prefixIcon: Icon(
//EvaIcons.search,
//),
//hintText: 'search products',
//hintStyle: TextStyle(
//fontSize: 12.0
//),
//),
//),
//),
