import 'package:flutter/material.dart';
import 'package:group_project/screens/screens.dart';
import 'package:group_project/ui/size_config.dart';
import 'package:group_project/widgets/providerexample.dart';
import 'package:provider/provider.dart';

import 'widgets/navbar_widget.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ProviderExample(),
          ),
        ],
        child: App(),
      ),
    );

// This is the main class
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'Roboto'),
          initialRoute: NavBar.id,
          routes: {
            NavBar.id: (context) => NavBar(),
            HomePage.id: (context) => HomePage(),
//                CategoryPage.id : (context) => CategoryPage(),
//            UserProfile.id: (context) => UserProfile(),
          },
        );
      });
    });
  }
}

//return MaterialApp(
//debugShowCheckedModeBanner: false,
//theme: ThemeData(fontFamily: 'Roboto'),
//// home: HomePage(),
//initialRoute: '/',
//routes: {
//'/' : (context) => HomePage(),
//// '/productPage' : (context) => ProductsPage(),
//},
//);
