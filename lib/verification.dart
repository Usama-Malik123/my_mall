import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);
  @override
  State<Verification> createState() => _VerificationState();
}
class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Spacer(),
            Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
              left: 10,),
          child: const Text(
            'Verification',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          )),
            Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 15),
          child: const Text(
            "Enter the email address associated with your "
            "account. We'll send you a link to reset your"
            " password",
            style: TextStyle(fontSize: 15,
            color: Colors.grey),
          )),
            
            Spacer(),
            Container(
          height: 70,
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
          child: ElevatedButton(
            child: const Text('SUBMINT'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            onPressed: () {
              // print(nameController.text);
              // print(passwordController.text);
            },
          )),
          Spacer(),
          ]),
      ),
    );
  }
}
