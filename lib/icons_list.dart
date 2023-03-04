import 'package:flutter/material.dart';

import 'buttons.dart';

class IconList extends StatelessWidget {
  const IconList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {'icon': Icons.edit, 'text': 'Edit Profile'},
      {'icon': Icons.local_shipping, 'text': 'Shipping/Address'},
      {'icon': Icons.heart_broken_sharp, 'text': 'Wishlist'},
      {'icon': Icons.history, 'text': 'Order History'},
      {'icon': Icons.spatial_tracking, 'text': 'Track Order'},
      {'icon': Icons.card_membership, 'text': 'Cards'},
      {'icon': Icons.notifications, 'text': 'Notifications'},
    ];
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://cdn.statusqueen.com/dpimages/thumbnail/Stylish_boy_dp-3087.jpg'), // replace with your image url
                  ),
                ),
                Spacer(),
                Text("David Spade",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Spacer(),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(items[index]['icon']),
                  title: Text(items[index]['text']),
                  onTap: () {
                    // do something when the item is tapped
                  },
                );
              },
            ),
          ),
          Buttons(),
        ],
      ),
    );
  }
}
