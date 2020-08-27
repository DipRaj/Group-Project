import 'package:flutter/material.dart';
import 'package:group_project/models/models.dart';

class ProductsWidget extends StatelessWidget {
  final List<Products> products;

  ProductsWidget({this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          var price = products[index].price.toString();
          return Container(
            width: 200.0,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  bottom: 15.0,
                  child: Container(
                    height: 120.0,
                    width: 170.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rs $price',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            products[index].productName.toString(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    height: 150.0,
                    width: 150.0,
                    image: AssetImage(
                      products[index].imgUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
