
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/cartpage.dart';
import 'package:untitled1/detailpage.dart';
import 'package:untitled1/product.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>HomePage(),
        'detail':(context)=>detailpage(),
        'cart':(context)=>Cart(),
      },
    ),
  );
}