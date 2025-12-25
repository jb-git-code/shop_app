import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/global_varriables.dart';
import 'package:shop_app/widgets/product_cart.dart';
import 'package:shop_app/pages/product_detail_page.dart';
import 'package:shop_app/widgets/product_list.dart';
import 'package:shop_app/pages/shopping_cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = const [ProductList(), ShoppingCart()];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentPage, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 36), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag, size: 36),
            label: '',
          ),
        ],
      ),
    );
  }
}
