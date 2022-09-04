import 'package:flutter/material.dart';

final ButtonStyle buttonStyleScientific = ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(horizontal: 20),
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    side: BorderSide(color: Colors.white54, width: 0.8));

final ButtonStyle buttonStyleHistory = ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(horizontal: 27),
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    side: BorderSide(color: Colors.white54, width: 0.8));

final TextStyle textStyle = TextStyle(
  fontWeight: FontWeight.w400,
  color: Colors.white,
);
