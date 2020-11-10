import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:group_project/data/data.dart';
import 'package:group_project/ui/size_config.dart';
import 'package:group_project/widgets/navbar_widget.dart';
import 'package:group_project/widgets/profile_desc.dart';
import 'package:group_project/widgets/user_cart.dart';
import 'package:group_project/widgets/user_stock.dart';

import '../widgets/chat_box.dart';

class UserProfile extends StatefulWidget {
  static String id = 'userProfilePage';
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
//  int selectedIndex = 0;
  List<bool> isSelected = [true, false, false, false];
  void changeTab(int index) {
    for (int i = 0; i < isSelected.length; i++) {
      if (index == i) {
        isSelected[i] = true;
      } else {
        isSelected[i] = false;
      }
    }
    print(isSelected[index]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff5f5f5),
              child: Column(
                children: [
                  //This container is the top section inside which there are two containers.
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Stack(
                        children: [
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                              ),
                            ),
                            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Text(
                                      'Logout',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    onPressed: () {
                                      print('Logout');
                                    },
                                    color: Colors.blue,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      users[0].getUName(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                      ),
                                    ),
                                    Text(
                                      users[0].getGmail(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                __boxContainer(
                                    FontAwesomeIcons.user, isSelected[0], 0),
                                __boxContainer(Icons.message, isSelected[1], 1),
                                __boxContainer(
                                    FontAwesomeIcons.heart, isSelected[2], 2),
                                __boxContainer(
                                    FontAwesomeIcons.boxOpen, isSelected[3], 3),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //profile desc section
                  Visibility(
                    visible: isSelected[0] ? true : false,
                    child: ProfileDesc(),
                  ),

                  //Chatbox section
                  Visibility(
                    visible: isSelected[1] ? true : false,
                    child: ChatBox(),
                  ),

                  //Usercart section
                  Visibility(
                    visible: isSelected[2] ? true : false,
                    child: UserCart(),
                  ),

                  //UserStock section
                  Visibility(
                    visible: isSelected[3] ? true : false,
                    child: UserStock(
                      isSelected: isSelected,
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }

  Widget __boxContainer(IconData icon, bool isSelected, int selectedIndex) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = true;
          changeTab(selectedIndex);
        });
      },
      child: Container(
        height: 40 * SizeConfig.heightMultiplier,
        width: 40 * SizeConfig.heightMultiplier,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: isSelected
                ? Border.all(color: Colors.blue)
                : Border.all(color: Colors.white),
            color: Colors.white),
        child: Icon(
          icon,
          color: isSelected ? Colors.blue : Colors.black,
        ),
      ),
    );
  }
}
