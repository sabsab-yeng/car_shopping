import 'package:flutter/material.dart';
import 'package:shopping_app/ui/cart/cart_page.dart';
class CartDetailsPage extends StatefulWidget {
  @override
  _CartDetailsPageState createState() => _CartDetailsPageState();
}

class _CartDetailsPageState extends State<CartDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        elevation: 0,
        title: Text("Cart Details"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: CartPage(),
    );
  }
}