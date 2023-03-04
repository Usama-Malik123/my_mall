import 'package:flutter/material.dart';
//import 'package:flutter_screen/dashboard.dart';
//import 'package:flutter_screen/forgot_password_screen.dart';
//import 'create_new_account.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool _isObscure = true;
  @override
  void showAlertDialog(
    String text,
    String text1,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(text),
        content: Text(text1),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true)
                  .pop(); // dismisses only the dialog and returns nothing
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, 
              children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                      top: 55, left: 10, right: 10, bottom: 10),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 22, left: 12, bottom: 1, right: 20),
              child: Text(
                "Name",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 12,color: Colors.black38),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: '',
                  floatingLabelStyle: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 22, left: 12, bottom: 1, right: 20),
              child: Text(
                "Email",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 12,color: Colors.black38),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: '',
                  floatingLabelStyle: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 19, left: 15, bottom: 1, right: 20),
              child: Text(
                "Password",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 12,color: Colors.black38),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: TextField(
                  controller: passwordController,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    labelText: "",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Spacer(),
                  // GestureDetector(
                  //   onTap: () {
                  //     showAlertDialog(
                  //       "Notworking",
                  //       "guest in under development",
                  //     );
                  //   },
                  //   child: Text(
                  //     'Continue as Guest',
                  //     style: TextStyle(color: Colors.yellow[400]),
                  //   ),
                  // ),
                  // GestureDetector(
                  //   onTap: () {
                  //     // Navigator.push(
                  //     //   context,
                  //     //   MaterialPageRoute(
                  //     //       builder: (context) => ForgotPasswordScreen()),
                  //     // );
                  //   },
                  //),
                ],
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                    child: const Text('SIGN IN'),
                    style: ElevatedButton.styleFrom(
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(13)),
                      textStyle: const TextStyle(fontSize: 15, color: Colors.blue),
                     // primary: Color(0xFFC8E6C9),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => CreateNewAccountScreen()),
                      // );
                    })),
            Padding(
              padding: const EdgeInsets.only(top: 11, left: 10, right: 10),
              child: MaterialButton(
                onPressed: () {
                  if (emailController.text == "") {
                    final scaffold = ScaffoldMessenger.of(context);
                    scaffold.showSnackBar(
                      SnackBar(
                        content: Text("Email field is empty"),
                      ),
                    );
                  } else if (passwordController.text == "") {
                    final scaffold = ScaffoldMessenger.of(context);
                    scaffold.showSnackBar(
                      SnackBar(
                        content: Text("password field is empty"),
                      ),
                    );
                  } else if (!RegExp(
                          r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                      .hasMatch(emailController.text)) {
                    final scaffold = ScaffoldMessenger.of(context);
                    scaffold.showSnackBar(
                      SnackBar(
                        content: Text("please enter valid email"),
                      ),
                    );
                  } else if (passwordController.text.length < 8) {
                    final scaffold = ScaffoldMessenger.of(context);
                    scaffold.showSnackBar(
                      SnackBar(
                        content: Text("password should be 8 char"),
                      ),
                    );
                  } else {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => CreateNewAccountScreen()),
                    // );
                  }
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
  void click(bool bool) {}
}
