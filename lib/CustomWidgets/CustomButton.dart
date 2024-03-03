import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/Global.dart';

Widget customButton(title, onpressed) {
  return SizedBox(
    width: 600,
    height: 50,
    child: ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryButtonColor,
      ),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
