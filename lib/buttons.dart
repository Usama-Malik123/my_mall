import 'package:flutter/material.dart';
import 'package:my_mall/explore_scroll.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Icon(
                Icons.explore_off,
                color: Colors.black,
                size: 22,
              ),
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 22,
            ),
            Icon(
              Icons.account_box,
              color: Colors.black,
              size: 22,
            ),
          ],
        ),
      ),
    );
  }
}
