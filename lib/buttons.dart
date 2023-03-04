import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
 const Buttons({Key? key}) : super(key: key);
  
 @override
  Widget build(BuildContext context) {
    return Positioned(
          bottom: 0,
          child: Container(
            height: 66,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Center(
                child: Row(
                  children: [
                    Icon(Icons.ads_click, color: Colors.black),
                    Spacer(),
                     Icon(Icons.shopping_cart, color: Colors.black),
                   Spacer(),
                    Icon(Icons.account_box, color: Colors.black),
                  ],
                ),
              ),
            ),
          ),
        );
  }
}