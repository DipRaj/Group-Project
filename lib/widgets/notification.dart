import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_project/data/data.dart';

class NotificationWidget extends StatelessWidget {
  //final List<Notification> notifications;

  //NotificationWidget({this.notifications});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Container(
            height: 80,
            padding: EdgeInsets.all(8),
            child: ListTile(
              leading: Image(
                image: AssetImage(
                  notifications[index].imgUrl,
                ),
                width: 100,
                fit: BoxFit.cover,
              ),
              title: Text(
                notifications[index].notificationDesc.toString(),
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
              trailing: RaisedButton(
                color: Colors.teal,
                onPressed: (){
                  print('');
                },
                child: Text(
                  'Renew',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        }
      ),
    );
  }
}
//height: MediaQuery.of(context).size.height,
//child: ListView.builder(
//scrollDirection: Axis.vertical,
//itemCount: notifications.length,
//itemBuilder: (context, index) {
//return Container(
//margin: EdgeInsets.only(
//top: 15,
//left: 20,
//right: 15,
//bottom: 15,
//),
//height: 150,
//width: 200,
//decoration: BoxDecoration(
//borderRadius: BorderRadius.circular(20.0),
//color: Colors.white,
//),
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.end,
//children: <Widget>[
//Expanded(
//flex: 2,
//child: Padding(
//padding: const EdgeInsets.only(
//left: 10, bottom: 10, top: 8, right: 10),
//child: Row(
//children: <Widget>[
//Expanded(
//flex: 1,
//child: Image(
//image: AssetImage(
//notifications[index].imgUrl,
//),
//fit: BoxFit.fill,
//),
//),
//Expanded(
//flex: 2,
//child: Padding(
//padding: const EdgeInsets.only(
//left: 40,
//bottom: 20,
//right: 10,
//),
//child: Text(
//notifications[index].notificationDesc.toString(),
//),
//),
//),
//],
//),
//),
//),
//Expanded(
//child: Padding(
//padding: const EdgeInsets.only(bottom: 10, right: 30),
//child: FlatButton(
//shape: RoundedRectangleBorder(
//borderRadius: BorderRadius.circular(20.0),
//side: BorderSide(
//color: Color(0xff03C9A9),
//),
//),
//color: Color(0xff03C9A9),
//textColor: Colors.white,
//padding: EdgeInsets.all(8.0),
//onPressed: () {},
//child: Text(
//'Renew',
//style: (TextStyle(fontWeight: FontWeight.bold)),
//),
//),
//),
//),
//],
//),
//);
//},
//),
