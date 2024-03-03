import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/CustomWidgets/NavigationDrawerWidget.dart';
import 'package:multivendor_ecommerce/CustomerScreens/CartScreen.dart';

class CustomerPurchaseHistory extends StatefulWidget {
  const CustomerPurchaseHistory({super.key});

  @override
  State<CustomerPurchaseHistory> createState() => _CustomerPurchaseHistoryState();
}

class _CustomerPurchaseHistoryState extends State<CustomerPurchaseHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>CartScreen()));
              },
              icon: Image.asset("assets/icons/cart_32px.png")),
        ],
      ),
      drawer: NavigationDrawerWidget(),
      body: Text("You have not purchased anything"),
    ));
  }
}
