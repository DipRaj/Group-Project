import 'package:flutter/material.dart';
import 'package:group_project/models/models.dart';
import 'package:group_project/constants.dart';

class ProductsWidget extends StatelessWidget {
  final List<Products> products;
  final String title;

  ProductsWidget({this.products, this.title});

  @override
  Widget build(BuildContext context) {
    // Main Container
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                title,
                style: widgetTitleTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'More',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 180.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              int price = products[index].price; //stores the price
              String productName =
                  products[index].productName; //stores the product name.
              bool isUsed = products[index].isUsed;
              // String productDesc = products[index].productDesc;
              // Container with image and desc
              return Container(
                // margin: EdgeInsets.all(5),
                width: 140.0,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    // This positions the child container to the given bottom property
                    Positioned(
                      bottom: 15.0,

                      // This container contains the details of the product
                      child: Container(
                        height: 80.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 3), // changes position of shadow
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
                                'Rs $price'.toString(),
                                style: productTextStyle,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                (isUsed == true)
                                    ? '$productName (Used)'
                                    : '$productName (New)',
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // CurveEdged images
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        height: 100.0,
                        width: 100.0,
                        image: AssetImage(
                          products[index].images[0],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}


