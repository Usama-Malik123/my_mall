import 'package:flutter/material.dart';
import 'package:my_mall/icons_list.dart';
import 'dart:ui';
import 'buttons.dart';

class Explore_Categories_Review extends StatefulWidget {
  const Explore_Categories_Review({Key? key}) : super(key: key);
  @override
  State<Explore_Categories_Review> createState() => _Explore_Categories_ReviewState();
}

class _Explore_Categories_ReviewState extends State<Explore_Categories_Review> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {'icon': Icons.edit, 'text': 'Apple Inc'},
      {'icon': Icons.local_shipping, 'text': 'B&o'},
      {'icon': Icons.heart_broken_sharp, 'text': 'Wishlist'},
    ];
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 30, left: 12, bottom: 25),
                child: Row(
                  children: [
                    Icon(Icons.keyboard_arrow_down),
                    Spacer(),
                    Text(
                      "Write Review",
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Nike Dri-FIT long",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
            ),
            Spacer(),
            Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: textController,
                  decoration: InputDecoration(
                    labelText: 'Tell us your experience',
                    floatingLabelStyle: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            Spacer(),
            Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {
                       
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IconList()),
                );
           
                      },
                      child: Text(
                        'SEND',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
