import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Stack(
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/duke.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              top: 10.0,
              left: 10.0,
              child: Text(
                  'Bike on Sale',
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.yellow,
                  ),
              ),
          ),
        ],
      ),
    );
  }
}
