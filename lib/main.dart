import 'package:flutter/material.dart';
import 'package:flutter_fastcallth/views/home_ui.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUI(),
       theme: ThemeData(
         fontFamily: 'Kanit',
       ),
    )
  );
  
}