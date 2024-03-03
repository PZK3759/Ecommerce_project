import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/CustomerScreens/CustomerHomeScreen.dart';
import 'package:multivendor_ecommerce/CustomerScreens/CustomerPurchaseHistory.dart';
import 'package:multivendor_ecommerce/Global.dart';

class CustomerProfileScreen extends StatefulWidget {
  const CustomerProfileScreen({super.key});

  @override
  State<CustomerProfileScreen> createState() => _CustomerProfileScreenState();
}

class _CustomerProfileScreenState extends State<CustomerProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            CircleAvatar(
              backgroundImage: AssetImage("assets/avatar.png"),
              radius: 100,
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Justin Roberts", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                Text("Kolabagan, Dhaka",style: descriptionTextStyle,)
              ],
            ),
            SizedBox(height: 30,),
            SizedBox(
              height: 2,
              width: MediaQuery.sizeOf(context).width,
              child: Container(
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.person, size: 35,),
                  SizedBox(width: 10,),
                  Text("Personal Information", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(
              height: 2,
              width: MediaQuery.sizeOf(context).width,
              child: Container(
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.notifications, size: 35,),
                  SizedBox(width: 10,),
                  GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomerHomeScreen(currentIndex: 3,)));
                      },
                      child: Text("Notifications", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),))
                ],
              ),
            ),
            SizedBox(
              height: 2,
              width: MediaQuery.sizeOf(context).width,
              child: Container(
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.save, size: 35,),
                  SizedBox(width: 10,),
                  GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomerHomeScreen(currentIndex: 4,)));
                      },
                      child: Text("Wishlist", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),))
                ],
              ),
            ),
            SizedBox(
              height: 2,
              width: MediaQuery.sizeOf(context).width,
              child: Container(
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.shopping_bag, size: 35,),
                  SizedBox(width: 10,),
                  GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomerPurchaseHistory()));
                      },
                      child: Text("Purchase History", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),))
                ],
              ),
            ),
            SizedBox(
              height: 2,
              width: MediaQuery.sizeOf(context).width,
              child: Container(
                color: Colors.black,
              ),
            ),
          ],
        ),
      )
    );
  }
}
