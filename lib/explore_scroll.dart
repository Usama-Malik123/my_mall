import 'package:flutter/material.dart';
import 'package:my_mall/explore_categories_b&o.dart';
import 'dart:ui';
import 'buttons.dart';

class Explore_Scroll extends StatefulWidget {
  const Explore_Scroll({Key? key}) : super(key: key);
  @override
  State<Explore_Scroll> createState() => _Explore_ScrollState();
}

class _Explore_ScrollState extends State<Explore_Scroll> {
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Explore_Categories_BoScreen()),
                              );
                            },
                          ),
                          SizedBox(
                            width: 100,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search',
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.camera_alt),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: (1),
                      controller: new ScrollController(keepScrollOffset: false),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        3,
                        (index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: NetworkImage(
                                      "https://static-01.daraz.pk/p/1cbe66f199878f0bbd371d9909cbe31e.jpg"),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 16, left: 12),
                child: Text(
                  "Featured Brands",
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
                        child: GestureDetector(
                          onTap: () {
                            print('${items[index]['text']} pressed');
                          },
                          child: Center(
                            child: Row(
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
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 4.0, left: 12.0, right: 12.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Recommended",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                    ),
                    Spacer(),
                    Text("See all")
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: (1 / 1.44),
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
                                  "https://cdn.shopify.com/s/files/1/0094/0716/8559/products/Untitled-1_0004_DSC03169_0008_DSC03342_0012_DSC03329_0032_DSC03044_0044_DSC03406_600x.jpg?v=1634035293"),
                            ),
                            Text(
                              "Testing Title",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w900),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Sub Title",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w900),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Rs 750",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.green,
                                  fontWeight: FontWeight.w900),
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Buttons(),
            ],
          ),
        ),
      ),
    );
  }
}
