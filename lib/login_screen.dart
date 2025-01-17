import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:my_mall/explore.dart';
import 'package:my_mall/sign_up.dart';
import 'package:my_mall/verification.dart';
//import 'package:flutter_screen/dashboard.dart';
//import 'package:flutter_screen/forgot_password_screen.dart';
//import 'create_new_account.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Future<void> loginWithFacebook() async {}
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome,',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  //alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: const Text(
                    'Sign in to Continue',
                    style: TextStyle(fontSize: 12, color: Colors.black38),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Container(
                  child: Text(
                    "Email",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 12, color: Colors.black38),
                  ),
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
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 10),
                child: Container(
                  child: Text(
                    "Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 12, color: Colors.black38),
                  ),
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
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Verification()),
                          );
                        },
                        child: Text(
                          'Forget Password',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    //),
                  ],
                ),
              ),
              Spacer(),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                      child: const Text('SIGN IN'),
                      style: ElevatedButton.styleFrom(
                        textStyle:
                            const TextStyle(fontSize: 15, color: Colors.blue),
                      ),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Explore()),
                          );
                        }
                      })),
              Padding(
                padding: const EdgeInsets.only(top: 11, left: 10, right: 10),
                child: OutlinedButton(
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'CREATE NEW ACCOUNT',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 19.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton.icon(
                  onPressed: () async {
                    try {
                      final LoginResult result =
                          await FacebookAuth.instance.login();
                      final AccessToken accessToken = result.accessToken!;
                    } catch (e) {
                      print(e);
                    }
                  },
                  icon: Icon(
                    Icons.facebook,
                    color: Colors.blue,
                  ),
                  label: Text(
                    'Sign in with Facebook',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      backgroundColor: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void click(bool bool) {}
}
