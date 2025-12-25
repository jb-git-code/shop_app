import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  final String name;
  final String price;
  final String url;
  final Color backgroundColor;
  const ProductCart({
    super.key,
    required this.name,
    required this.price,
    required this.url,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: Theme.of(context).textTheme.titleMedium),
          Text('\$$price', style: Theme.of(context).textTheme.titleSmall),
          Image.asset(url),
        ],
      ),
    );
  }
}
