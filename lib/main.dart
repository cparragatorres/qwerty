import 'package:flutter/material.dart';
import 'package:qwerty/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Museum App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
