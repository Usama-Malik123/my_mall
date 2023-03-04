import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              //  height: 50,
               margin: EdgeInsets.only(right: 26),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blueAccent)
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Perform search action
                    },
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12, left: 20),
              child: Text("Categories"),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                //scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTile(
                      leading: Icon(items[index]['icon']),
                      title: Text(items[index]['text']),
                      onTap: () {
                        // do something when the item is tapped
                      },
                    ),
                  );
                },
              ),
            ),


          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Expanded(
          //   child: ListView.builder(
          //     itemCount: items.length,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         leading: Icon(items[index]['icon']),
          //         title: Text(items[index]['text']),
          //         onTap: () {
          //           // do something when the item is tapped
          //         },
          //       );
          //     },
          //   ),
          // ),

          //     ],
          //   ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text("Best Selling"),
                  Spacer(),
                  Text("See all"),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Image(
                    image: NetworkImage(
                        "https://www.shutterstock.com/image-photo/beautiful-gold-mens-watch-black-260nw-1967916433.jpg"),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Image(
                    image: NetworkImage(
                        "https://www.shutterstock.com/image-photo/beautiful-gold-mens-watch-black-260nw-1967916433.jpg"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  Text(
                    "Beoplay Speaker",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text(
                      "Beoplay Speaker",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9),
              child: Row(
                children: [
                  Text(
                    "bang and Oulsen",
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 38),
                    child: Text(
                      "Tag Heure",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9),
              child: Row(
                children: [
                  Text(
                    '\$755',
                    style: TextStyle(color: Colors.green, fontSize: 10),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      '\$450',
                      style: TextStyle(color: Colors.green, fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {},
                  textColor: Colors.black,
                  child: Icon(
                    Icons.explore_off_sharp,
                    size: 22,
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  textColor: Colors.black,
                  child: Icon(
                    Icons.shopping_cart,
                    size: 22,
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  textColor: Colors.black,
                  child: Icon(
                    Icons.contact_phone,
                    size: 22,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
