import 'package:eco/components/cart_item.dart';
import 'package:eco/models/card.dart';
import 'package:eco/models/shoe.dart';
import 'package:eco/pages/new_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const Text(
                "My Cart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                    //get individual shoe
                    Shoe eachShoe = value.getUserCart()[index];

                    //return the cart item
                    return CartItems(
                      shoe: eachShoe,
                    );
                  },
                ),
              )
            ],
          ),
        ),
        floatingActionButton: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Design(),
            ));
          },
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
