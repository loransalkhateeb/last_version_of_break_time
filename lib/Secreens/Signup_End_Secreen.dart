

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/Widgets/Elevated_Button.dart';

class Signup_End_User extends StatefulWidget {
  const Signup_End_User({super.key});

  @override
  State<Signup_End_User> createState() => _Signup_End_UserState();
}

class _Signup_End_UserState extends State<Signup_End_User> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassowrd = TextEditingController();
  var fkey = GlobalKey<FormState>();
  bool isPassShown = true;
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: fkey,
        child: Stack(
          children: [
            Container(
              width: 442,
              height: 350,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(90),
                      bottomLeft: Radius.circular(90)),
                  gradient: LinearGradient(
                      colors: [Color(0xff9B1A19), Color(0xff080101)])),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                  width: 320,
                  height: 650,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffFFFFFF),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xff9B1A19),
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                        offset: Offset(
                          5.0, // Move to right 5  horizontally
                          5.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        const Center(
                          child: Text(
                            "Registration",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, right: 16),
                          child: Opacity(
                            opacity: 0.7,
                            child: TextFormField(
                              controller: _username,
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value!.trim().isEmpty) {
                                  return "User_Name must not be empty";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Image.asset(
                                    "images/user1 1.png",
                                    width: 19,
                                    height: 19,
                                  ),
                                  hintText: 'User_Name'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, right: 16),
                          child: TextFormField(
                            controller: _email,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.trim().isEmpty) {
                                return "Email Address must not be empty";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon: Image.asset("images/email 1.png"),
                              hintText: 'Email',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, right: 16),
                          child: TextFormField(
                            controller: _password,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            validator: (value) {
                              if (value!.trim().isEmpty) {
                                return "Password must not be empty";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon: Image.asset("images/key 1.png"),
                              hintText: 'Password',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, right: 16),
                          child: TextFormField(
                            controller: _confirmpassowrd,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            validator: (value) {
                              if (value!.trim().isEmpty) {
                                return "Confirme Password must not be empty";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon: Image.asset("images/key 1.png"),
                              hintText: 'Confirme Password',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Elevaed_Button(
                          text: 'SignUp',
                          ontap: () {
                            if (fkey.currentState!.validate()) {
                              if (_password.text == _confirmpassowrd.text) {
                                // signup();
                              } else if (_password.text !=
                                  _confirmpassowrd.text) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      icon: const Icon(Icons.error),
                                      content: const Text(
                                          "The password is not euqle"),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text("ok"),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
