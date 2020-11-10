//import 'package:flutter/material.dart';
//
//class CarouselImage extends StatelessWidget {
//  // final int photoIndex = 0;
//  final List<String> images = [
//    'images/jacket.jpg',
//    'images/hoodie.jpg',
//    'images/sweat-shirt.jpg',
//    'images/laptops.jpg'
//  ];
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: [
//        Padding(
//          padding: const EdgeInsets.all(15.0),
//          child: Text(
//            'Special For You',
//            style: TextStyle(
//              fontSize: 18.0,
//              fontWeight: FontWeight.bold,
//            ),
//          ),
//        ),
//        SizedBox(
//          height: 20.0,
//        ),
//        CarouselSlider(
//          options: CarouselOptions(
//            height: 200.0,
//            enlargeCenterPage: true,
//            enlargeStrategy: CenterPageEnlargeStrategy.height,
//            // autoPlay: true,
//          ),
//          items: images.map((i) {
//            return Builder(
//              builder: (BuildContext context) {
//                return Container(
//                  width: MediaQuery.of(context).size.width,
//                  margin: EdgeInsets.symmetric(horizontal: 5.0),
//                  child: Stack(
//                    children: [
//                      Container(
//                        decoration: BoxDecoration(
//                          boxShadow: [
//                            BoxShadow(
//                              color: Colors.black26,
//                              offset: Offset(0.0, 2.0),
//                              blurRadius: 6.0,
//                            ),
//                          ],
//                          borderRadius: BorderRadius.circular(20.0),
//                          image: DecorationImage(
//                            image: AssetImage(i),
//                            fit: BoxFit.cover,
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                );
//              },
//            );
//          }).toList(),
//        ),
//      ],
//    );
//  }
//}
//
//// class Indicators extends StatelessWidget {
////   final int indicatorsCount;
////   final int index;
//
////   Indicators({this.indicatorsCount, this.index});
////   @override
////   Widget build(BuildContext context) {
////     return Row(
////       children: [
////         Container(
////           height: 8.0,
////           width: 8.0,
////           decoration: BoxDecoration(
////             borderRadius: BorderRadius.circular(20.0),
////           ),
////         ),
////       ],
////     );
////   }
//// }
