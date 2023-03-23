import 'package:flutter/material.dart';
import 'package:my_mall/checkout_address.dart';
import 'package:my_mall/checkout_payments.dart';
import 'dart:ui';
import 'buttons.dart';

class Checkout_delivery extends StatefulWidget {
  const Checkout_delivery({Key? key}) : super(key: key);
  @override
  State<Checkout_delivery> createState() => _Checkout_deliveryState();
}

class _Checkout_deliveryState extends State<Checkout_delivery> {
  int _selectedValue = 1;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    SizedBox(height: 50),
                    Icon(Icons.keyboard_arrow_down),
                    Spacer(),
                    Text(
                      "Check Out",
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 10),
              child: Row(
                children: [
                  Column(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: _selectedValue,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value!;
                            onTap:
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Checkout_address()),
                              );
                            };
                          });
                        },
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Delivery',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: _selectedValue,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value!;
                          });
                        },
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Address',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Radio(
                        value: 3,
                        groupValue: _selectedValue,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value!;
                          });
                        },
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Payments',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Standard Delivery',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'order 3 to 5',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                  Spacer(),
                  Radio(
                    value: 1,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Next Day Delivery',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Pick a particular data',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                  Spacer(),
                  Radio(
                    value: 2,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nominated Delivery',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'place your order',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                  Spacer(),
                  Radio(
                    value: 3,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                ],
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
                                MaterialPageRoute(
                                    builder: (context) => Checkout_address()),
                              );   

                      },
                      child: Text(
                        'Next',
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
