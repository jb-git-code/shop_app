import 'package:flutter/material.dart';
import 'package:shop_app/global_varriables.dart';
import 'package:shop_app/home_screen.dart';
import 'package:shop_app/product_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 255, 235, 59),
          primary: Color.fromARGB(255, 255, 235, 59),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
          titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
      ),
      home: HomePage(),
    );
  }
}
