import 'package:flutter/material.dart';
import 'package:group_project/data/data.dart';

class WishListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemCount: wishProduct.length,
          itemBuilder: (context, index) {
            return Container(
              height: 85,
              padding: EdgeInsets.only(
                left: 8,
                top: 15,
              ),
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    wishProduct[index].imgUrl,
                  ),
                  width: 100,
                  fit: BoxFit.cover,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(
                    left: 14,
                    right: 18,
                  ),
                  child: Text(
                    wishProduct[index].wishDesc.toString(),
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    wishProduct[index].subTitle.toString(),
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                trailing: RaisedButton(
                  color: Colors.teal,
                  onPressed: () {
                    print('');
                  },
                  child: Text(
                    'Chat With Seller',
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
          }),
    );
  }
}
