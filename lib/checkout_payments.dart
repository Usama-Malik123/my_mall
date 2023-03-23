import 'package:flutter/material.dart';
import 'dart:ui';
import 'buttons.dart';

class Checkout_payments extends StatefulWidget {
  const Checkout_payments({Key? key}) : super(key: key);
  @override
  State<Checkout_payments> createState() => _Checkout_paymentsState();
}

class _Checkout_paymentsState extends State<Checkout_payments> {
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
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 480,
                width: 480,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.0),
                  border: Border.all(
                    color: Colors.blue, // Set the border color here
                    width: 2, // Set the border width here
                  ),
                  color: Colors.white,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                                'Payments',
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
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.add),
                                ],
                              ),
                            ),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.remove),
                                ],
                              ),
                            ),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.edit),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                      height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          border: Border.all(
                            color: Colors.blue, // Set the border color here
                             // Set the
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                               Text("Name on card",
                               style: TextStyle(
                                fontSize: 10,
                               ),),
                              ],
                            ),
                            Spacer(),
                            Text("David Spade",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Text("Card number"),
                       SizedBox(height: 25),
                      Row(
                        children: [
                          Text("6589 8965 9895 4567"),
                          Spacer(),
                          Icon(Icons.food_bank),                        ],
                      ),
                      Spacer(),
                       Row(
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
                          'Save this card details',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                         ],
                       ),
                 
                    ]),
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
                    onPressed: () {},
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
