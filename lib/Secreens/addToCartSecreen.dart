import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopapp/Secreens/sucessfully_page.dart';

class AddToCartSecreen extends StatefulWidget {
  const AddToCartSecreen({super.key});

  @override
  State<AddToCartSecreen> createState() => _AddToCartSecreenState();
}

class _AddToCartSecreenState extends State<AddToCartSecreen> {
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
                       
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 80, left: 190),
                    child: Text(
                      "Payments",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
                    )),
              ],
            )),
        Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            InkWell(
              onTap: () {
                print("Hamza");
              },
              child: Image.asset(
                "images/visa.png",
                width: 190,
                height: 50,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            InkWell(
              onTap: () {
                print("Hamza");
              },
              child: Image.asset(
                "images/cart.jpg",
                width: 190,
                height: 150,
                fit: BoxFit.fill,
              ),
            )
          ],
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
                      return const successfully_page();
                    },
                  ),
                );
              },
              child: const Text(
                "Confirme",
                style: TextStyle(
                    fontWeight: FontWeight.w800, color: Color(0xff0000000)),
              )),
        )
      ],
    ));
  }
}
