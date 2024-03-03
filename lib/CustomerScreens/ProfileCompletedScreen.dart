import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/Global.dart';
import 'package:multivendor_ecommerce/GlobalScreens/LoginScreen.dart';

class ProfileCompletedScreen extends StatelessWidget {
  const ProfileCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/icons/64check-mark.png")),
          SizedBox(height: 12,),
          Center(child: Text("Account creation successful",style: titleTextStyle,)),
          SizedBox(height: 20,),
          TextButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));
          }, child: Text("Back to Login"))
        ],
      ),
    ));
  }
}
