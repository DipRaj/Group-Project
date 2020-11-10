import 'package:flutter/material.dart';
import 'package:group_project/data/data.dart';

class ProfileDesc extends StatefulWidget {
  @override
  _ProfileDescState createState() => _ProfileDescState();
}

class _ProfileDescState extends State<ProfileDesc> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
//        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.only(left: 20.0),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _textField('Name: ', users[0].getUName()),
                _textField('Phone:', users[0].getPhone().toString()),
                _textField('City:', users[0].getCity()),
                _textField('Gmail:', users[0].getGmail()),
                RaisedButton(
                  child: Text(
                    'Update Info',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    print('Pressed');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _textField(String key, String value) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            key,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.2,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            value,
          ),
        ),
      ],
    ),
  );
}
