import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Sources.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(milliseconds: 100),(t){setState((){});});
  }
  @override
  Widget build(BuildContext context){
    return (isIOS)?CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const Homepage(),
      },
    ):
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: appColor.bgColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: appColor.bgColor,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: appColor.bgColor,
          centerTitle: true,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const Homepage(),
        "open_app": (context) => const OpenApp(),
      },
    );
  }
}


