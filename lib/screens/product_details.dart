import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:group_project/models/products.dart';
import 'package:group_project/ui/size_config.dart';
import 'package:group_project/widgets/widgets.dart';
import 'package:group_project/data/data.dart';
// import 'package:group_project/widgets/product_carousel_widget.dart';

class ProductsPage extends StatefulWidget {
  final String id = 'productPage';
  final List<Products> product;
  final int index;

  const ProductsPage({Key key, this.product, this.index}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  Size size;
  String btnName = 'Show Description';
  bool visible = false;
  IconData iconStatus = EvaIcons.chevronDown;
  bool isPreviewed;

  int currentIndex = 0;

//Changes to next item
  void _next() {
    setState(() {
      if (currentIndex < products.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
    });
  }
//changes to previous item
  void _prev() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = products.length - 1;
      }
    });
  }

  //This method makes the button change its name and icon accordingly.
  void isVisible() {
    if (visible == true) {
      visible = false;
      btnName = 'Show Description';
      iconStatus = EvaIcons.chevronDown;
    } else {
      visible = true;
      btnName = 'Hide Description';
      iconStatus = EvaIcons.chevronUp;
    }
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onHorizontalDragEnd: (DragEndDetails details) {
                  if (details.velocity.pixelsPerSecond.dx > 0) {
                    _prev();
                  } else if (details.velocity.pixelsPerSecond.dx < 0) {
                    _next();
                  }
                },

                //Image Container
                child: Container(
                  height: 233.33 * SizeConfig.heightMultiplier,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(product[index].imgUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 40,
                        width: 130.0,
                        child: Row(
                          children: _buildIndicator(),
                        ),
                      ),
                    ],
                  ),
                  ),
                ),
              ),

              // Show Description Button
              FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  setState(() {
                    isVisible();
                  });
                },
                child: CustomButton(
                  icon: iconStatus,
                  btnName: btnName,
                  height: 30.0 * SizeConfig.heightMultiplier,
                  width: double.infinity,
                  buttonColor: Colors.white,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  btnTextSize: 8.0,
                  iconSize: 20,
                  textColor: Colors.blue,
                  iconColor: Colors.blue,
                ),
              ),

              //This is collapsible container which contains the description of the product
              Visibility(
                visible: visible,
                child: Container(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                  height: 250,
                  width: double.infinity,
//                  duration: Duration(milliseconds: 250),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(product[index].productName),
                          Text('Rs. 125000'),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('(Used)'),
                          Text('Condition: Good'),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'This is iphone 11 pro max, 64 GB variant. The size of the mobile phone is 6.5 inches. Released 2019, September ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      //This row contains two Buttons
                      Row(
                        children: [
                          //Add to cart button
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: CustomButton(
                                icon: Icons.shopping_cart,
                                btnName: 'Add to Cart',
                                height: 25.0 * SizeConfig.heightMultiplier,
                                buttonColor: Colors.white,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                btnTextSize: 8.0,
                                iconSize: 20,
                                textColor: Colors.blue,
                                iconColor: Colors.blue,
                                btnBorderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.blue),
                              ),
                            ),
                          ),

                          //Chat with Seller button
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: CustomButton(
                                icon: Icons.message,
                                btnName: 'Chat with Seller',
                                height: 25.0 * SizeConfig.heightMultiplier,
                                buttonColor: Colors.blue,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                btnTextSize: 8.0,
                                iconSize: 20,
                                textColor: Colors.white,
                                iconColor: Colors.white,
                                btnBorderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 10.0,
                ),
                alignment: Alignment.topLeft,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Similar Products',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
              ),

//            Similar Products ListView
              ProductCarousel(
                products: products,
                size: size,
                category: products[currentIndex].category,
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: NavBar(),
    );
  }

  //Indicators for pointing out the active image
  Widget _indicator(bool isPreviewed) {
    return Expanded(
      child: Container(
        height: isPreviewed ? 7 : 5,
        margin: EdgeInsets.only(right: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: isPreviewed ? Colors.grey[800] : Colors.white,
        ),
      ),
    );
  }
  //build indicators
  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < products.length; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}
