import 'package:flutter/material.dart';

class AddProductForm extends StatefulWidget {
  @override
  _AddProductFormState createState() => _AddProductFormState();
}

class _AddProductFormState extends State<AddProductForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        title: Text(
          'Enter the details of the product'
        ),
      ),
      body: CustomForm(),
    );
  }
}

class CustomForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Kilometers',
              labelText: 'kilometers'
            ),
          ),
        ],
      ),
    );
  }
}

