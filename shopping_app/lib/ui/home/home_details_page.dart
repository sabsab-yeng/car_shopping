import 'package:flutter/material.dart';
import 'package:shopping_app/ui/cart/cart_details_page.dart';
import 'package:shopping_app/ui/cart/cart_page.dart';

class HomeDetailPage extends StatefulWidget {
  @override
  _HomeDetailPageState createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  VoidCallback _showBottom;

  

  void _showBottomDetails() {
    setState(() {
      _showBottom = null;
    });

    _scaffoldKey.currentState.showBottomSheet((context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.6,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: CartPage(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Details page"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=> CartDetailsPage()));
            },
          )
        ],
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
                          child: Column(
                children: [
                  Image.asset('images/1.png'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Price: \$50.000",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                onPressed: () {
                  _showBottomDetails();
                },
                color: Colors.green,
                child: Text(
                  "Buy",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
