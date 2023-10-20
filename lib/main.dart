import 'package:flutter/material.dart';
import 'package:shop/pages/HomePage.dart';
import 'package:shop/pages/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: "/welcome", // Set halaman awal ke /welcome
      routes: {
        "/welcome": (context) => WelcomePage(), // Tambahkan route /welcome
        "/home": (context) => HomePage(),
      },
    );
  }
}
