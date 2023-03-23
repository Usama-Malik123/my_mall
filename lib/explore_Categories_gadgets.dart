import 'package:flutter/material.dart';
import 'package:my_mall/explore_categories_filter.dart';
import 'dart:ui';
import 'buttons.dart';

class Explore_Categories_Gadgets extends StatefulWidget {
  const Explore_Categories_Gadgets({Key? key}) : super(key: key);
  @override
  State<Explore_Categories_Gadgets> createState() =>
      _Explore_Categories_GadgetsState();
}

class _Explore_Categories_GadgetsState
    extends State<Explore_Categories_Gadgets> {
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
                padding: EdgeInsets.only(top: 25, left: 12, bottom: 25),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new),
                    Spacer(),
                    Text(
                      "Gadgets",
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Icon(Icons.search),
                      shape: CircleBorder(),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Top Brands",
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
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => items[index]['2']));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(items[index]['icon']),
                          const SizedBox(height: 8),
                          Text(
                            items[index]['text'],
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  );
                },
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
                                "https://www.shutterstock.com/image-photo/beautiful-gold-mens-watch-black-260nw-1967916433.jpg"),
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
            Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'No filters applied',
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
                              builder: (context) =>
                                  Explore_Categories_Filter()),
                        );
                      },
                      child: Text(
                        'FILTER',
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
