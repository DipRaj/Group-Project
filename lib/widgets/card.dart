import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            height: 200,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/jacket.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ButtonBar(
            children: [
              FlatButton(
                onPressed: () {
                  print('');
                },
                child: Text('Chat with Seller'),
              ),
              FlatButton(
                onPressed: () {
                  print('');
                },
                child: Text('Chat with Seller'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
