import 'package:flutter/material.dart';
import 'package:group_project/screens/screens.dart';
void main() => runApp(App());

// This is the main class
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
