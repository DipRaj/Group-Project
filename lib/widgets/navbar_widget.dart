import 'package:flutter/material.dart';
import 'package:group_project/models/add_products.dart';
import 'package:group_project/screens/add_product.dart';
import 'package:group_project/screens/profile.dart';
import 'package:group_project/screens/screens.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class NavBar extends StatefulWidget {
  static String id = 'navBar';
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  final _pageOption = [
    HomePage(),
    CategoryPage(),
    AddProducts(),
    NotificationPage(),
    UserProfileTest(),
  ];
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _page,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.category, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.notifications, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.teal,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: _pageOption[_page],
    );
//    //main container
////    return Padding(
////      padding: const EdgeInsets.all(8.0),
////      child: Container(
////        height: 50 * SizeConfig.imageSizeMultiplier,
////        decoration: BoxDecoration(
////          borderRadius: BorderRadius.circular(
////            30.0,
//////          topRight: Radius.circular(30.0),
//////          topLeft: Radius.circular(300),
////          ),
////          boxShadow: [
////            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 50),
////          ],
////        ),
////        child: ClipRRect(
////          borderRadius: BorderRadius.circular(
////            30.0,
//////          topLeft: Radius.circular(30.0),
//////          topRight: Radius.circular(30.0),
////          ),
////          child: BottomNavigationBar(
////            backgroundColor: Colors.blue,
////            selectedItemColor: Colors.black,
////            unselectedItemColor: Colors.grey,
////            currentIndex: currentIndex,
////            onTap: (index) {
////              setState(() {
////                currentIndex = index;
////                print(currentIndex);
////              });
////              changeNav(currentIndex);
////            },
////            items: <BottomNavigationBarItem>[
////              BottomNavigationBarItem(
////                icon: Icon(EvaIcons.home,
//////              color: currentIndex == 0 ? Colors.black : Colors.grey,
////                ),
////                title: Text(
////                  'Home',
////                  style: TextStyle(
////                    fontSize: 10.0,
//////                  color: currentIndex == 0 ? Colors.black : Colors.grey,
////                  )
////                ),
////              ),
////              BottomNavigationBarItem(
////                icon: Icon(EvaIcons.shoppingBag,
//////                color: currentIndex == 1 ? Colors.black : Colors.grey,
////                ),
////                title: Text(
////                  'Shop',
////                  style: TextStyle(
////                    fontSize: 10.0,
//////                  color: currentIndex == 1 ? Colors.black : Colors.grey,
////                  ),
////                ),
////              ),
////              BottomNavigationBarItem(
////                icon: Icon(EvaIcons.plusCircle,
//////                color: currentIndex == 2 ? Colors.black : Colors.grey,
////                ),
////                title: Text(
////                  'Sell',
////                  style: TextStyle(
////                    fontSize: 10.0,
//////                  color: currentIndex == 2 ? Colors.black : Colors.grey,
////                  ),
////                ),
////              ),
////              BottomNavigationBarItem(
////                icon: Icon(EvaIcons.bell,
//////                color: currentIndex == 3 ? Colors.black : Colors.grey,
////                ),
////                title: Text(
////                  'Notifications',
////                  style: TextStyle(
////                    fontSize: 10.0,
//////                  color: currentIndex == 3 ? Colors.black : Colors.grey,
////                  ),
////                ),
////              ),
////              BottomNavigationBarItem(
////                icon: Icon(EvaIcons.person,
//////                color: currentIndex == 4 ? Colors.black : Colors.grey,
////                 ),
////                title: Text(
////                  'Profile',
////                  style: TextStyle(
////                    fontSize: 10.0,
//////                  color: currentIndex == 4 ? Colors.black : Colors.grey,
////                  ),
////                ),
////              ),
////            ],
////          ),
//        ),
//      ),
//    );
  }
}
