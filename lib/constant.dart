import 'package:flutter/material.dart';

const kMainAccentColor = Colors.lightBlueAccent;
const kMainBackgroundColor = Colors.white;
const kMainTextColor = Colors.black;

const mainAppTextStyle = TextStyle(
  color: kMainBackgroundColor,
  fontSize: 50,
  fontWeight: FontWeight.w700,
);

const mainBoxDecoration = BoxDecoration(
  color: kMainBackgroundColor,
  borderRadius: BorderRadiusDirectional.only(
    topEnd: Radius.circular(15),
    topStart: Radius.circular(15),
  ),
);

const kListTextStyle = TextStyle(color: kMainTextColor, fontSize: 20);

const kAddTaskTextStyle = TextStyle(color: kMainAccentColor, fontSize: 30);
