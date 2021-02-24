import 'package:flutter/material.dart';

Widget authTextFields(String hintText, String iconName) {
  return Container(    
    margin: EdgeInsets.symmetric(horizontal: 32),
    padding: EdgeInsets.symmetric(horizontal: 8),
    height: 50,
    decoration: BoxDecoration(
      color: Color.fromRGBO(239,227,227,1),
      borderRadius: BorderRadius.circular(50)
    ),
    child: TextField(
      cursorColor: Color.fromRGBO(139,103,103,1),
      style: TextStyle(
          fontFamily: 'Poppins', 
          fontWeight: FontWeight.bold, 
          color: Color.fromRGBO(139,103,103,1),
          fontSize: 21
        ),
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Image.asset('assets/icons/$iconName', height: 24, width: 22,),
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: 'Poppins', 
          fontWeight: FontWeight.bold, 
          color: Color.fromRGBO(129,93,93,1),
          fontSize: 21
        )
      ),
    ),
  );
}