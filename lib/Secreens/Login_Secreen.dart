
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/Secreens/ForgetPassword.dart';

import '../Widgets/Elevated_Button.dart';
import 'Bottom_NavigationBar_Secreen/Bottom_NavigationBar_Secreen.dart';
import 'Check_Secreen.dart';

class Login_Secreen extends StatefulWidget {
  Login_Secreen({super.key});

  @override
  State<Login_Secreen> createState() => _Login_SecreenState();
}

class _Login_SecreenState extends State<Login_Secreen> {
  final TextEditingController _emailControllor = TextEditingController();
  final TextEditingController _passwordControllor = TextEditingController();
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
                      colors: [Color(0xFFFDD835), Color(0xff080101)])),
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
                        color: Color(0xFFFDD835),
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
                          height: 100,
                        ),
                        const Center(
                          child: Text(
                            "Welcome back",
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
                              controller: _emailControllor,
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.trim().isEmpty) {
                                  return "Email must not be empty";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Image.asset(
                                    "images/email 1.png",
                                    width: 19,
                                    height: 19,
                                  ),
                                  hintText: 'Email'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, right: 16),
                          child: TextFormField(
                            controller: _passwordControllor,
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
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return ForgetPassword();
                                    },
                                  ),
                                );
                              },
                              child: const Text(
                                "Forget Password?",
                                style: TextStyle(
                                    color: Color(0xFFFDD835),
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Elevaed_Button(
                          text: 'Login',
                          ontap: () {
                             Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return ButtomNavigationScreen();
                                        },
                                      ),
                                    );
                          },
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            children: [
                              const Text(
                                "Don’t have an account?",
                                style: TextStyle(
                                    color: Color(0xff000000), fontSize: 18),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const Cehck_Scereen();
                                        },
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Color(0xFFFDD835), fontSize: 18),
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 35,
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
