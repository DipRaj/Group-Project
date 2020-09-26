import 'package:flutter/material.dart';
import 'package:group_project/widgets/notification_widget.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        appBar: AppBar(
          backgroundColor: Color(0xff03c9a9),
          title: Text(
            'Notifications',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: <Widget>[
            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Color(0xfff5f5f5),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.chat,
                  size: 30,
                  color: Colors.indigoAccent,
                ),
              ),
            ),
          ],
        ),
        body: NotificationWidget(),
      ),
    );
  }
}
