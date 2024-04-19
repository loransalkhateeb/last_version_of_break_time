import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopapp/Secreens/Bottom_NavigationBar_Secreen/Profile_Secreen.dart';
import 'package:shopapp/Widgets/Elevated_Button.dart';

class Payments_Secreen extends StatefulWidget {
  const Payments_Secreen({super.key});

  @override
  State<Payments_Secreen> createState() => _Payments_SecreenState();
}

class _Payments_SecreenState extends State<Payments_Secreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 129,
            color: const Color(0xff818181).withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xffFFFFFF)),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const Profile_Secreen();
                            },
                          ),
                        );
                      },
                      icon: const Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 120),
                    child: Text("Card Type",
                        style:
                            TextStyle(color: Color(0xff1E1E1E), fontSize: 22)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          InkWell(
            child: Image.asset("images/paypal-2 (1) 1.png"),
            onTap: () {
              print("kejfkej");
            },
          ),
          const SizedBox(
            height: 80,
          ),
          InkWell(
            child: Image.asset("images/Group.png"),
            onTap: () {
              print("kejfkej");
            },
          ),
          const SizedBox(
            height: 80,
          ),
          InkWell(
            child: Image.asset("images/image 1.png"),
            onTap: () {
              print("kejfkej");
            },
          ),
          const SizedBox(
            height: 200,
          ),
          Elevaed_Button(
            text: 'Add Cart',
            ontap: () {},
          )
        ],
      ),
    );
  }
}
