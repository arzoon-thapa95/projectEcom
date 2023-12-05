import 'package:eco/models/card.dart';
import 'package:eco/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItems extends StatefulWidget {
  const CartItems({
    super.key,
    required this.shoe,
  });
  final Shoe shoe;
  

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  void removeItemformCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: Image.asset(widget.shoe.imagePath),
          title: Text(widget.shoe.name),
          subtitle: Text(widget.shoe.price),
          trailing: IconButton(
            onPressed: removeItemformCart,
            icon:const  Icon(
              Icons.delete,
            ),
          ),
        ),
      ),
    );
  }
}
