import 'package:flutter/material.dart';

const bg = Color(0xFF0A0E16);
const panel = Color(0xFF10141D);
const panel2 = Color(0xFF141925);
const lineColor = Color.fromARGB(255, 54, 63, 89);

const textColor = Color(0xFFE8EDF4);
const muted = Color(0xFF8891A0);

const teal = Color(0xFF3FE0C5);
const violet = Color(0xFF9B6BF0);
const pink = Color(0xFFC25FD6);



ThemeData portfolioTheme(){

return ThemeData.dark().copyWith(

 scaffoldBackgroundColor:bg,

 textTheme:
 ThemeData.dark()
 .textTheme
 .apply(
   bodyColor:textColor,
   displayColor:textColor
 )

);

}