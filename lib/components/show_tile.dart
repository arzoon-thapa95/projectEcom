import 'package:eco/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  const ShoeTile({
    super.key,
    required this.shoe,
    required this.onTap,
  });

  final Shoe shoe;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          width: 350,
          height: 350,
          margin:const  EdgeInsets.only(
            left: 100,
          ),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // shoe picc
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Center(
                    child: Image.asset(
                      shoe.imagePath,
                    ),
                  ),
                ),

                //description
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    shoe.description,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                //price +details
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            shoe.name,
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),

                          //price
                          Text(
                            textAlign: TextAlign.end,
                            shoe.price,
                            style:const  TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: onTap,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                12,
                              ),
                              bottomRight: Radius.circular(
                                12,
                              ),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                //button to add cart
              ],
            ),
          ),
        ),
      ),
    );
  }
}
