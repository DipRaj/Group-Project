import 'package:flutter/material.dart';
import 'package:group_project/data/data.dart';

class ChatBox extends StatefulWidget {
  @override
  _ChatBoxState createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: false,
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                messages[index].user.getProfileImage(),
              ),
              radius: 30,
            ),
            title: Text(
              messages[index].user.getUName(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              messages[index].message,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Text(
              'Today',
                  style: TextStyle(
                    fontSize: 12,
                  ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}

/**    return Expanded(
      flex: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Container(
//          color: Colors.blue,
          child: ListView.builder(
//          shrinkWrap: true,
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 10.0),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[400],
                        spreadRadius: 0,
                        offset: Offset(0, 1),
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        messages[index].uName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
//                                overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        messages[index].message,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
    */
