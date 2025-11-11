import 'package:flutter/material.dart';
import 'package:food_app/components/my_cart_tile.dart';
import 'package:food_app/models/cart_item.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // cart
        final userCart = restaurant.cart;

        //scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: Text("Cart", style: TextStyle(fontWeight: FontWeight.w600)),
            backgroundColor: const Color.fromARGB(255, 51, 53, 53),
            foregroundColor: Colors.white,
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    //get individual cart item
                    final cartItem = userCart[index];

                    //return cart tile UI
                    return MyCartTile(cartItem: cartItem);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
