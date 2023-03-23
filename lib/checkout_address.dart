import 'package:flutter/material.dart';
import 'package:my_mall/checkout_payments.dart';
import 'dart:ui';
import 'buttons.dart';

class Checkout_address extends StatefulWidget {
  const Checkout_address({Key? key}) : super(key: key);
  @override
  State<Checkout_address> createState() => _Checkout_addressState();
}

class _Checkout_addressState extends State<Checkout_address> {
  TextEditingController addressController = TextEditingController();
  int _selectedValue = 1;
  bool _isChecked = false;
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
                          
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Checkout_payments()),
                );
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
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (boolvalue) {
                      setState(() {
                        _isChecked = true;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Billing address is same as delivery address',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 12),
              child: Text(
                "Street1",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 12, left: 12),
              child: TextField(
                controller: addressController,
                decoration: InputDecoration(
                  labelText: '',
                  floatingLabelStyle: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 12),
              child: Text(
                "Street2",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 12, left: 12),
              child: TextField(
                controller: addressController,
                decoration: InputDecoration(
                  labelText: '',
                  floatingLabelStyle: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 12),
              child: Text(
                "City",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 12, left: 12),
              child: TextField(
                controller: addressController,
                decoration: InputDecoration(
                  labelText: '',
                  floatingLabelStyle: TextStyle(fontSize: 10),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                children: [
                  Text(
                    "Status",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Country",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
         Padding(
           padding: const EdgeInsets.only(top: 15,left: 12,right: 12),
           child: Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Logas State',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 2.0),
                        ),
                      ),
                    ),
                    Spacer(),
                     OutlinedButton(
                       onPressed: () {},
                       child: Text(
                         'Nigeria',
                         style: TextStyle(color: Colors.black),
                       ),
                       style: OutlinedButton.styleFrom(
                         shape: RoundedRectangleBorder(
                           side: BorderSide(width: 2.0),
                         ),
                       ),
                     ),
                  ],
           ),
         ),
         Spacer(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                   OutlinedButton(
                     onPressed: () {},
                     child: Text(
                       'BACK',
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
                  MaterialPageRoute(builder: (context) => Checkout_payments()),
                );
                     },
                     child: Text(
                       'NEXT',
                       style: TextStyle(color: Colors.white),
                     ),
                   ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
