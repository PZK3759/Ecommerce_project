import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/CustomWidgets/NavigationDrawerWidget.dart';
import 'package:multivendor_ecommerce/CustomerScreens/CartScreen.dart';
import 'package:multivendor_ecommerce/CustomerScreens/CustomerHomeScreen.dart';
import 'package:multivendor_ecommerce/CustomerScreens/ProductDetailsScreen.dart';
import 'package:multivendor_ecommerce/Global.dart';

class SelectedCategoryScreen extends StatefulWidget {
  const SelectedCategoryScreen({super.key});

  @override
  State<SelectedCategoryScreen> createState() => _SelectedCategoryScreenState();
}

class _SelectedCategoryScreenState extends State<SelectedCategoryScreen> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CartScreen()));
              },
              icon: Image.asset("assets/icons/cart_32px.png")),
        ],
      ),
      // drawer: NavigationDrawerWidget(),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset("assets/icons/home_32px.png"), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("assets/icons/search_32px.png"), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("assets/icons/user-icon_32px.png"),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("assets/icons/bell_32px.png"), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("assets/icons/archive-box_32px.png"),
                label: ""),
          ],
          onTap: (index) {
            currentIndex = index;
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => CustomerHomeScreen(currentIndex: currentIndex)));
          }),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("[Selected Category]", style: headingTextStyle,),
              SizedBox(height: 10,),
              ListView.builder(
                  itemCount: 10,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailsScreen(productID: 0)));
                      },
                      child: Card(
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage(
                                    "assets/Product-Images/hp-spectre-x360.jpg"),
                                width: 210,
                              ),
                              Flexible(
                                child: SizedBox(
                                  width: 270,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "HP SPectre",
                                        style: titleTextStyle,
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "Intel® Core™ i5-1335U",
                                        style: descriptionTextStyle,
                                        softWrap: true,
                                      ),
                                      Text("Intel® Iris® Xe Graphics", style: descriptionTextStyle,softWrap: true,),
                                      Text(
                                        "\$1390",
                                        style: descriptionTextStyle,
                                        softWrap: true,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  })
          ],),
        ),
      ),
    ));
  }
}
