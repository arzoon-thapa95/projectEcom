import 'package:eco/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntorPage extends StatelessWidget {
  const IntorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 60,
                ),
                //logo
                Image.asset(
                  "assets/images/13.png",
                  height: 240,
                  fit: BoxFit.cover,
                ),
                //title
                const Text(
                  'Just Do it. . .',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               const  SizedBox(
                  height: 12,
                ),
                const Text(
                  'Brand new products and custom made with premium quility',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>const  HomePage(),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:const  Center(
                      child: Padding(
                        padding:  EdgeInsets.all(25.0),
                        child:  Text(
                          'Shop Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
