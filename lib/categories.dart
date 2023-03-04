import 'package:flutter/material.dart';
import 'dart:ui';

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
      {'icon': Icons.local_shipping, 'text': 'Shipping'},
      {'icon': Icons.heart_broken_sharp, 'text': 'Wishlist'},
      {'icon': Icons.history, 'text': 'Order History'},
      {'icon': Icons.spatial_tracking, 'text': 'Track Order'},
      {'icon': Icons.card_membership, 'text': 'Cards'},
      {'icon': Icons.notifications, 'text': 'Notifications'},
    ];
    var tempWidth = MediaQuery.of(context).size.width;
    var tempHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Container(
                      width: tempWidth - 66,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.blueAccent)),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {
                              // Perform search action
                            },
                          ),
                          SizedBox(
                            height: 50,
                            width: 100,
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
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 16, left: 12),
                child: Text(
                  "Categories",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                height: 82,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        child: Center(
                          child: Column(
                            children: [
                              Icon(items[index]['icon']),
                              const SizedBox(height: 6),
                              Text(
                                items[index]['text'],
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 12.0, right: 12.0, bottom: 20.0),
                child: Row(
                  children: [
                    Text("Best Selling"),
                    Spacer(),
                    Text("See all"),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: (1 / 1.66),
                  controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: List.generate(
                    6,
                    (index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: NetworkImage(
                                  "https://www.shutterstock.com/image-photo/beautiful-gold-mens-watch-black-260nw-1967916433.jpg"),
                            ),
                            Text(
                              "Testing Title",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Sub Title",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w900),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Rs 750",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.w900),
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
