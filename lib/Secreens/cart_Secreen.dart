import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopapp/Secreens/Bottom_NavigationBar_Secreen/Bottom_NavigationBar_Secreen.dart';

class Cart_Secreen extends StatefulWidget {
  const Cart_Secreen({super.key});

  @override
  State<Cart_Secreen> createState() => _Cart_SecreenState();
}

class _Cart_SecreenState extends State<Cart_Secreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.yellow,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "My cart",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              IconButton(
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
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ))
            ],
          )),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              width: MediaQuery.of(context).size.width,
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color.fromARGB(255, 212, 207, 207)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Image.asset(
                      "images/dr1.jpg",
                      width: 70,
                      height: 80,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Name category",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Quantity",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Price \$",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Update",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Delete",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
                      )
                    ],
                  )
                ],
              ),
            ),

            SizedBox(
              height: 50,
            ),
            //This is the second container

            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              width: MediaQuery.of(context).size.width,
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color.fromARGB(255, 212, 207, 207)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Image.asset(
                      "images/dr1.jpg",
                      width: 70,
                      height: 80,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Name category",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Quantity",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Price \$",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Update",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Delete",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
                      )
                    ],
                  )
                ],
              ),
            ),

            SizedBox(
              height: 50,
            ),
            //This is the thired container

            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              width: MediaQuery.of(context).size.width,
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color.fromARGB(255, 212, 207, 207)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Image.asset(
                      "images/dr1.jpg",
                      width: 70,
                      height: 80,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Name category",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Quantity",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Price \$",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Update",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Delete",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              width: MediaQuery.of(context).size.width,
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color.fromARGB(255, 212, 207, 207)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Image.asset(
                      "images/dr1.jpg",
                      width: 70,
                      height: 80,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Name category",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Quantity",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Price \$",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Update",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Delete",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.yellow),
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Price:",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
              ),
              Text(
                "10.55 JD",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
