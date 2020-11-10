import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:group_project/models/products.dart';
import 'package:group_project/ui/size_config.dart';
import 'package:group_project/widgets/widgets.dart';
import 'package:group_project/data/data.dart';

class ProductDetailsPage extends StatefulWidget {
  final Products product;

  const ProductDetailsPage({Key key, this.product}) : super(key: key);


  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();

}

class _ProductDetailsPageState extends State<ProductDetailsPage> {

  Size size;
  String btnName = 'Show Description';
  bool visible = true;
  IconData iconStatus = EvaIcons.chevronDown;
  bool isPreviewed;

  int currentIndex = 0;

//Changes to next item
  void _next() {
    setState(() {
      if (currentIndex < widget.product.images.length - 1) {
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
        currentIndex = widget.product.images.length - 1;
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
//      backgroundColor: Color(0xfff0f0f0),
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
                child: Stack(
                  children: [

                    Container(
                      height: 233.33 * SizeConfig.heightMultiplier,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.product.images[0]),
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
                            width: 80.0,
                            child: Row(
                              children: _buildIndicator(),
                            ),
                          ),
                        ],
                      ),
                      ),
                    ),

                    //Back Arrow Icon
                    Positioned(
                      top: 10,
                      left: 10,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context, MaterialPageRoute);
                        },
                        child: Icon(
                          EvaIcons.arrowBack,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                    ),

                    //next and prev icon
                    Positioned(
                      top: 111 * SizeConfig.heightMultiplier,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                _prev();
                              },
                              child: Icon(
                                EvaIcons.chevronLeft,
                                size: 40.0,
                                color: Colors.grey,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _next();
                              },
                              child: Icon(
                                EvaIcons.chevronRight,
                                size: 40.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
                          Text(widget.product.productName),
                          Text(widget.product.price.toString()),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.product.isUsed == true ? 'Used' : 'Brand New',
                          ),
                          Text('Condition: Good'),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        widget.product.productDesc,
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
                                icon: EvaIcons.heartOutline,
                                btnName: 'Add to Watchlist',
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
              ProductCarousel(
                productTypeText: 'Similar Products',
                products: products,
                size: size,
                category: widget.product.category,
              ),
            ],
          ),
        ],
      ),
    );
  }

  //Indicators for pointing out the active image
  Widget _indicator(bool isPreviewed) {
    return Expanded(
      child: Container(
        height: isPreviewed ? 5 : 5,
        margin: EdgeInsets.only(right: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: isPreviewed ? Colors.white : Colors.grey[800],
        ),
      ),
    );
  }
  //build indicators
  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < widget.product.images.length; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}
