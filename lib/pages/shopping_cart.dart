import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart_provider.dart';
import 'package:shop_app/global_varriables.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context).cart;
    return Scaffold(
      appBar: AppBar(title: Text('Shopping Cart')),
      body: cart.length == 0
          ? Center(
              child: Text(
                'Cart is Empty',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            )
          : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                final cartItem = cart[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(cartItem['imageUrl'] as String),
                    radius: 30,
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Provider.of<CartProvider>(
                        context,
                        listen: false,
                      ).removeCart(cartItem);
                    },
                    icon: Icon(Icons.delete, color: Colors.red),
                  ),
                  title: Text(
                    cartItem['title'] as String,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  subtitle: Text('Size: ${cartItem['size']}'),
                );
              },
            ),
    );
  }
}
