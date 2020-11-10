import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserProfileTest extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfileTest> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                //First Box
                Expanded(
                  flex: 5,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/hoodie.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 30.0,
                        left: 30,
                        child: Text(
                          'Dip Raj Rai',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Second Box
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      children: [
                        _textField('Mobile', '9818605887'),
                        _textField('City', 'Itahari-9'),
                        _textField('Area', 'BP chowk'),
                        _textField('G-mail', 'dipurai815@gmail.com'),
                      ],
                    ),
                  ),
                )
              ],
            ),

            Positioned(
              top: 330,
              right: 20,
              child: Container(
                width: 120,
//                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _floatingButtons(Icons.exit_to_app),
                    _floatingButtons(Icons.edit),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Widget _floatingButtons(icon) {
  return FloatingActionButton(
    backgroundColor: Colors.teal,
    child: Container(
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Icon(
        icon,
      ),
    ),
  );
}
Widget _textField(title, subTitle) {
  return ListTile(
    title: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        letterSpacing: 0.2,
      ),
    ),
    subtitle: Text(
      subTitle,
    ),
  );
}
