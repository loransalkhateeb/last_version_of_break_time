import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/Secreens/Login_Secreen.dart';
import 'package:shopapp/Widgets/Elevated_Button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController _emailControllor = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
          Container(
            width: 340,
            height: 550,
            margin: EdgeInsets.only(left: 35, top: 180),
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
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Forget Password",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "\t\t\t\t\t\t\t\t\tEnter your email address \n \tto reset your password instruction",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 80,
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
                  SizedBox(
                    height: 80,
                  ),
                  Elevaed_Button(
                    text: 'Send Link',
                    ontap: () {},
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement<void, void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      Login_Secreen(),
                                ),
                              );
                            },
                            child: Text("Got To Login",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w900)))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
