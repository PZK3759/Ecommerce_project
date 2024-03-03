import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/CustomerScreens/CustomerHomeScreen.dart';
import 'package:multivendor_ecommerce/Global.dart';

import '../CustomerScreens/SignUp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isObscure = true;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 90,
              ),
              Center(child: Image.asset("assets/appLogo.png")),
              const SizedBox(
                height: 60,
              ),
              Text(
                "Sign In",
                style: headingTextStyle,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Phone Number",
                style: descriptionTextStyle,
              ),
              const SizedBox(
                height: 7,
              ),
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    label: const Text("01xxxxxxxxx"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: inactiveTFColor, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: activeTFColor, width: 3),
                    )),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Password",
                style: descriptionTextStyle,
              ),
              const SizedBox(
                height: 7,
              ),
              TextField(
                obscureText: isObscure,
                controller: passwordController,
                decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        isObscure  =! isObscure;
                      });
                    }, icon:  isObscure ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off), ),
                    label: const Text("********"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: inactiveTFColor, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: activeTFColor, width: 3),
                    )),
              ),
              const SizedBox(
                height: 12,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgotten Password?",
                    style: titleTextStyle,
                  )),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: primaryButtonColor,
                    ),
                    onPressed: () {
                      //for demo purposes only, add function later

                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomerHomeScreen(currentIndex: 0,)));
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have an Account?",
                    style: titleTextStyle,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        "Sign Up",
                        style: titleTextStyle,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
