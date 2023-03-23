import 'package:flutter/material.dart';
import 'package:my_mall/explore_categories_review.dart';
import 'buttons.dart';

class Explore_Categories_Filter extends StatelessWidget {
  const Explore_Categories_Filter({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {'icon': Icons.edit, 'text': 'Edit Profile'},
      {
        'text': 'Shipping/Address',
        'icon': Icons.local_shipping,
      },
      {'icon': Icons.heart_broken_sharp, 'text': 'Wishlist'},
      {'icon': Icons.history, 'text': 'Order History'},
      {'icon': Icons.spatial_tracking, 'text': 'Track Order'},
      {'icon': Icons.card_membership, 'text': 'Cards'},
      {'icon': Icons.notifications, 'text': 'Notifications'},
      {'icon': Icons.spatial_tracking, 'text': 'Track Order'},
      {'icon': Icons.card_membership, 'text': 'Cards'},
      {'icon': Icons.notifications, 'text': 'Notifications'},
      {'icon': Icons.spatial_tracking, 'text': 'Track Order'},
      {'icon': Icons.card_membership, 'text': 'Cards'},
      {'icon': Icons.notifications, 'text': 'Notifications'},
    ];
    var tempWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 30, left: 12, bottom: 25),
              child: Row(
                children: [
                  Icon(Icons.keyboard_arrow_down),
                  Spacer(),
                  Text(
                    "Filter",
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Text(items[index]['text']),
                      Spacer(), // add a spacer of 10 pixels
                      Icon(items[index]['icon']),
                    ],
                  ),
                );
              },
            ),
          ),
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
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'CLEAR',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 2.0),
                      ),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Explore_Categories_Review()),
                      );
                    },
                    child: Text(
                      'APPLY',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
