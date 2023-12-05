import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  final void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        tabBorderRadius: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.red[300],
        activeColor: Colors.grey.shade400,
        tabActiveBorder: Border.all(
          color: Colors.black45,
        ),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.shopping_basket_rounded,
            text: 'Cart',
          )
        ],
      ),
    );
  }
}
