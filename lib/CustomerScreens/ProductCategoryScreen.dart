import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/CustomWidgets/NavigationDrawerWidget.dart';
import 'package:multivendor_ecommerce/CustomerScreens/CartScreen.dart';
import 'package:multivendor_ecommerce/CustomerScreens/CustomerHomeScreen.dart';
import 'package:multivendor_ecommerce/CustomerScreens/SelectedCategoryScreen.dart';
import 'package:multivendor_ecommerce/Global.dart';

class ProductCategoryScreen extends StatefulWidget {
  const ProductCategoryScreen({super.key});

  @override
  State<ProductCategoryScreen> createState() => _ProductCategoryScreenState();
}

class _ProductCategoryScreenState extends State<ProductCategoryScreen> {

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
      drawer: NavigationDrawerWidget(),
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
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => SelectedCategoryScreen()));
                  },
                  child: Card(
                    color: liteCardColor,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Image.network("https://images.unsplash.com/photo-1580974928064-f0aeef70895a?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",),
                          Text("Electronics",style: darkMenuItemTextStyle,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => SelectedCategoryScreen()));
                  },
                  child: Card(
                    color: liteCardColor,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Image.network("https://images.unsplash.com/photo-1580974928064-f0aeef70895a?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",),
                          Text("Home Appliences",style: darkMenuItemTextStyle,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => SelectedCategoryScreen()));
                  },
                  child: Card(
                    color: liteCardColor,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Image.network("https://images.unsplash.com/photo-1580974928064-f0aeef70895a?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",),
                          Text("Fashion",style: darkMenuItemTextStyle,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => SelectedCategoryScreen()));
                  },
                  child: Card(
                    color: liteCardColor,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Image.network("https://images.unsplash.com/photo-1580974928064-f0aeef70895a?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",),
                          Text("Healthcare",style: darkMenuItemTextStyle,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => SelectedCategoryScreen()));
                  },
                  child: Card(
                    color: liteCardColor,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Image.network("https://images.unsplash.com/photo-1580974928064-f0aeef70895a?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",),
                          Text("Gadgets and Accessories",style: darkMenuItemTextStyle,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => SelectedCategoryScreen()));
                  },
                  child: Card(
                    color: liteCardColor,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Image.network("https://images.unsplash.com/photo-1580974928064-f0aeef70895a?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",),
                          Text("Groceries",style: darkMenuItemTextStyle,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => SelectedCategoryScreen()));
                  },
                  child: Card(
                    color: liteCardColor,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Image.network("https://images.unsplash.com/photo-1580974928064-f0aeef70895a?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",),
                          Text("Lifestyle",style: darkMenuItemTextStyle,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    ));
  }
}
