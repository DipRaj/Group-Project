import 'package:flutter/material.dart';
import 'package:group_project/data/data.dart';
import 'package:group_project/models/products.dart';
import 'package:group_project/screens/user_profile.dart';
import 'package:group_project/widgets/widgets.dart';

class UserStock extends StatefulWidget {
  final List<bool> isSelected;
  UserStock({Key key, this.isSelected}) : super(key: key);

  @override
  _UserStockState createState() => _UserStockState();
}

class _UserStockState extends State<UserStock> {

  String display(String stock) {
    if(stock == 'All') {

    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    productsTab('All'),
                    VerticalDivider(),
                    productsTab('Sold'),
                    VerticalDivider(),
                    productsTab('Active'),
                    VerticalDivider(),
                    productsTab('Expired'),
                  ],
                ),
              ),
            ),
            Flexible(child: _stock()),
          ],
        ),
      ),
    );
  }

  Widget productsTab(String stock) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          display(stock);
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          child: Text(
            stock,
          ),
        ),
      ),
    );
  }

  Widget _stock() {
    return Container(
      height: MediaQuery.of(context).size.height,
//      color: Colors.red,
      child: ListView.builder(
        itemCount: stock.length,
        itemBuilder: (context, index) {

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.height,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          image: AssetImage(products[index].images[0]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      products[index].productName,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
//
//  Widget stockTabs(Stock item) {
//
//  }

}
