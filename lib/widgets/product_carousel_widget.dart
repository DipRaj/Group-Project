import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:group_project/models/models.dart';
import 'package:group_project/screens/product_details.dart';
import 'package:group_project/ui/size_config.dart';
import 'package:group_project/widgets/card.dart';
import 'package:group_project/widgets/product_card.dart';
import 'package:group_project/widgets/providerexample.dart';
import 'package:provider/provider.dart';

class ProductCarousel extends StatelessWidget {
  final Size size;
  final List<Products> products;
  final String category;
  final String productTypeText;
  ProductCarousel(
      {@required this.products,
      @required this.size,
      @required this.category,
      this.productTypeText});

  @override
  Widget build(BuildContext context) {
    // Main Container
    return Container(
      constraints: BoxConstraints(
        maxHeight: 340 * SizeConfig.heightMultiplier,
      ),
      width: size.width, // Takes total width.
//       color: Colors.blueGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  productTypeText,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'More',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.teal,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
//          Checks if the products are of same category
                if (products[index].category != category) {
                  if (index < products.length) {
                    index++;
                    return Container();
                  } else {
                    return Container();
                  }
                } else {
//                    print(sameCategory.indexOf(products[index]));
//                    print(sameCategory.length);
                  //This container wraps the containers containing image and desc
                  return GestureDetector(
                    onTap: () {
                      print(Products().views);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailsPage(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: ProductCard(
                        product: products[index],
//                          sameCategory: sameCategory,
//                          index: sameCategory.indexOf(products[0]),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
