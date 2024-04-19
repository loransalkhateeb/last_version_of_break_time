import 'package:flutter/material.dart';

class Snake_Secreen extends StatefulWidget {
  const Snake_Secreen({super.key});

  @override
  State<Snake_Secreen> createState() => _Snake_SecreenState();
}

class _Snake_SecreenState extends State<Snake_Secreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Row(
              children: [
                Container(
                  width: 170,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.yellow,
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 17,
                      ),
                      ClipOval(
                        child: Padding(
                          padding: EdgeInsets.all(17),
                          child: Image.asset(
                            "images/sn1.png",
                            width: 150,
                            height: 110,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("The first meal"),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Text(
                              '20\$',
                              style: TextStyle(fontSize: 17),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.red),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.add,
                                  size: 22,
                                  color: Color(0xffFFFFFF),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 170,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.yellow,
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 17,
                      ),
                      ClipOval(
                        child: Padding(
                          padding: EdgeInsets.all(17),
                          child: Image.asset(
                            "images/sn2.jpg",
                            width: 150,
                            height: 110,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("The first meal"),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Text(
                              '20\$',
                              style: TextStyle(fontSize: 17),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.red),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.add,
                                  size: 22,
                                  color: Color(0xffFFFFFF),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Row(
              children: [
                SizedBox(
                  height: 17,
                ),
                Container(
                  width: 170,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.yellow,
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 17,
                      ),
                      ClipOval(
                        child: Padding(
                          padding: EdgeInsets.all(17),
                          child: Image.asset(
                            "images/sn3.png",
                            width: 150,
                            height: 110,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("The first meal"),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Text(
                              '20\$',
                              style: TextStyle(fontSize: 17),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.red),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.add,
                                  size: 22,
                                  color: Color(0xffFFFFFF),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 170,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.yellow,
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 17,
                      ),
                      ClipOval(
                        child: Padding(
                          padding: EdgeInsets.all(17),
                          child: Image.asset(
                            "images/sn4.png",
                            width: 150,
                            height: 110,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("The first meal"),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Text(
                              '20\$',
                              style: TextStyle(fontSize: 17),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.red),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.add,
                                  size: 22,
                                  color: Color(0xffFFFFFF),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
