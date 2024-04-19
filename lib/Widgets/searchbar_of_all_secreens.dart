import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Search_Bar_of_All_Secreens extends StatefulWidget {
  Search_Bar_of_All_Secreens({super.key});

  @override
  State<Search_Bar_of_All_Secreens> createState() =>
      _Search_Bar_of_All_SecreensState();
}

class _Search_Bar_of_All_SecreensState
    extends State<Search_Bar_of_All_Secreens> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10),
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Row(
        children: [
          Container(
              width: 380,
              height: 56,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff909090).withOpacity(0.4)),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Color(0xff151501),
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Search Food",
                    style: TextStyle(
                        color: Color(0xff151501),
                        fontSize: 19,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )),
          SizedBox(
            width: 19,
          ),
        ],
      ),
    );
  }
}
