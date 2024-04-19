import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopapp/Secreens/Bottom_NavigationBar_Secreen/Bottom_NavigationBar_Secreen.dart';
import 'package:shopapp/Secreens/addToCartSecreen.dart';

class successfully_page extends StatefulWidget {
  const successfully_page({super.key});

  @override
  State<successfully_page> createState() => _successfully_pageState();
}

class _successfully_pageState extends State<successfully_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              color: Colors.yellow,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 25),
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black.withOpacity(0.4)),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return AddToCartSecreen();
                              },
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(top: 80, left: 100),
                      child: Text(
                        "Confirmation Page",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 25),
                      )),
                ],
              )),
          const SizedBox(
            height: 50,
          ),
          Image.asset("images/correct.jpg"),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Order Your Added Successfully",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.yellow),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ButtomNavigationScreen();
                      },
                    ),
                  );
                },
                child: const Text(
                  "Done",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff0000000)),
                )),
          )
        ],
      ),
    );
  }
}
