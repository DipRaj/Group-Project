import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:group_project/data/data.dart';
import 'package:group_project/models/bool.dart';
import 'package:group_project/models/products.dart';
import 'package:group_project/ui/size_config.dart';
import 'package:group_project/constants.dart';
import 'package:group_project/widgets/custom_button_widget.dart';
import 'package:group_project/widgets/providerexample.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatefulWidget {
  final Products product;
  final List<Products>sameCategory;
//  final int index;
  ProductCard({this.product, this.sameCategory});

  @override
  _ProductCardState createState() => _ProductCardState();
}


class _ProductCardState extends State<ProductCard> {

//  @override
//  void initState() {
//    super.initState();
//    ProviderExample().createBoolList();
//    print(widget.index);
//  }


//List<bool> boolList = [];
//  void createBoolList() {
//    for(int i = 0; i< products.length; i++) {
//      boolList.add(false);
//    }
//    print(boolList);
//    print(products.length);
//  }
//  ProviderExample ob = ProviderExample();

  void chatWithSeller() {}

  @override
  Widget build(BuildContext context) {
//    print(ob.boolList);
//    createList(widget.products);
//    BoolList ob = BoolList();

    final changeIcon = Provider.of<ProviderExample>(context);
    //Main Container
    return Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(left: 6.6 * SizeConfig.heightMultiplier),
          child: Column(
            children: [
              // This container contains the product image.
              Container(
                height: 210 * SizeConfig.heightMultiplier,
                width: 200 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                    image: DecorationImage(
                  image: AssetImage(
                    widget.product.images[0],
                  ),
                  fit: BoxFit.cover,
//                  colorFilter: new ColorFilter.mode(Colors.blueGrey.withOpacity(1.0), BlendMode.softLight),
                )),
              ),

              //This container contains the description of the image
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  height: 100 * SizeConfig.heightMultiplier,
                  width: 200 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    color: Colors.grey[100],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: 5 * SizeConfig.heightMultiplier),

                          // Title and price tag of the product
                          child: Container(
//                              color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    widget.product.isUsed == true
                                        ? '${widget.product.productName} (Used)'
                                        : '${widget.product.productName} (New)',
                                    style: productDescTextStyle,
                                  ),
                                ),
                                Text(
                                  'Rs. ${widget.product.price}',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        //Buttons
                        child: Container(
                          padding: EdgeInsets.fromLTRB(6.6, 0, 6.6, 16.6) *
                              SizeConfig.heightMultiplier,
                          height: 53.0 * SizeConfig.widthMultiplier,
                          // color: Colors.yellow,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5 * SizeConfig.heightMultiplier),
                                  child: CustomButton(
                                    icon: EvaIcons.shoppingCartOutline,
                                    btnName: 'Chat with Seller',
                                    height: 26.0 * SizeConfig.heightMultiplier,
                                    width: 60 * SizeConfig.heightMultiplier,
                                    buttonColor: Colors.teal,
                                    splashColor: Colors.white,
                                    iconColor: Colors.white,
                                    textColor: Colors.white,
                                    btnTextSize: 5.0,
                                    iconSize: 14.0,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    btnBorderRadius: BorderRadius.circular(5.0),
                                    onTap: chatWithSeller,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5 * SizeConfig.heightMultiplier),
                                  child: CustomButton(
                                    icon:  EvaIcons.heartOutline,
                                    btnName: 'Add To Watchlist',
                                    height: 26.0 * SizeConfig.heightMultiplier,
                                    width: 80 * SizeConfig.heightMultiplier,
                                    buttonColor: Colors.white,
                                    splashColor: Colors.teal,
                                    iconColor: Colors.teal,
                                    textColor: Colors.teal,
                                    btnTextSize: 5.0,
                                    iconSize: 14.0,
                                    border: Border.all(color: Colors.teal),
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    btnBorderRadius: BorderRadius.circular(5.0),
                                    onTap: () {
                                      print('Pressed');
                                    },
                                  ),
                                ),
                              ),
//                          ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                spreadRadius: 0,
                offset: Offset(0, 0),
                blurRadius: 5.0,
              ),
            ],
          ),
    );
  }
}
