import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  final IconData theIcon;
  final String theText;
  DrawerWidget({this.theIcon, this.theText});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'images/hoodie.jpg',
                  ),
                  radius: 50,
                ),
                Text(
                  'Hamrobazzar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
          ),
          _tabs(Icons.home, 'Home'),
          _tabs(EvaIcons.heartOutline, 'My Watchlist'),
          _tabs(EvaIcons.shoppingCart, 'My Products'),
          _tabs(Icons.healing, 'Safety Tips'),
          _tabs(EvaIcons.info, 'Ad posting rules'),
          _tabs(EvaIcons.questionMark, 'FAQ'),
        ],
      ),
    );
  }

  Widget _tabs(IconData icon, String tabName) {
    return ListTile(
      leading: Icon(
        icon,
      ),
      title: Text(
        tabName,
      ),
    );
  }
}
