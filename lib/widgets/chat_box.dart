import 'package:flutter/material.dart';
import 'package:group_project/data/data.dart';

class ChatBox extends StatefulWidget {
  @override
  _ChatBoxState createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
//        color: Colors.red,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 15.0),
                child: Text('Messages'),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                child: ListView.builder(
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
                            ]),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
