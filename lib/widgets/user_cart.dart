import 'package:flutter/material.dart';
import 'package:group_project/data/data.dart';

class UserCart extends StatefulWidget {
  @override
  _UserCartState createState() => _UserCartState();
}

class _UserCartState extends State<UserCart> {
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
                  itemCount: cart.length,
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
                        child: Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image(
                                image: AssetImage(
                                  watchList[1].images[0],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    products[index].productName,
                                    style: TextStyle(
                                      fontSize: 16.0,
//                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    products[index].price.toString(),
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
//                                  Text(
//                                    cart[index].quantity.toString(),
//                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
