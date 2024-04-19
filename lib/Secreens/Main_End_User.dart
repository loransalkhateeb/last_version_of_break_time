import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopapp/Secreens/Menu.dart';
// import 'package:shopapp/List_Views/List_View_Items.dart';

// import '../List_Views/List_View_Sub_Category.dart';
// import '../List_Views/Offers_List_View.dart';
// import '../Widgets/App_Barof_All_secreens.dart';
// import '../Widgets/List_View_Categories.dart';
import '../Widgets/Widget_Special_Offer.dart';
import '../Widgets/searchbar_of_all_secreens.dart';

class Main_Enduser_Serceen extends StatefulWidget {
  const Main_Enduser_Serceen({super.key});

  @override
  State<Main_Enduser_Serceen> createState() => _Main_Enduser_SerceenState();
}

class _Main_Enduser_SerceenState extends State<Main_Enduser_Serceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFDD835).withOpacity(0.8),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  height: 40,
                ),
                Search_Bar_of_All_Secreens(),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          const Special_Offer(
            text1: 'All Cafe',
            text2: 'See All',
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(10), // Adjust the radius as needed
              boxShadow: [
                BoxShadow(
                  color: Colors.yellow.withOpacity(
                      0.8), // Adjust the color and opacity as needed
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: InkWell(
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
                child: Image.asset(
                  "images/m1.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TabbarExample();
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(10), // Adjust the radius as needed
              boxShadow: [
                BoxShadow(
                  color: Colors.yellow.withOpacity(
                      0.8), // Adjust the color and opacity as needed
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: InkWell(
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
                child: Image.asset(
                  "images/m2.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
              onTap: () {
                print("Lorans");
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(10), // Adjust the radius as needed
              boxShadow: [
                BoxShadow(
                  color: Colors.yellow.withOpacity(
                      0.8), // Adjust the color and opacity as needed
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: InkWell(
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
                child: Image.asset(
                  "images/m3.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
              onTap: () {
                print("Lorans");
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(10), // Adjust the radius as needed
              boxShadow: [
                BoxShadow(
                  color: Colors.yellow.withOpacity(
                      0.8), // Adjust the color and opacity as needed
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: InkWell(
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
                child: Image.asset(
                  "images/m4.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
              onTap: () {
                print("Lorans");
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(10), // Adjust the radius as needed
              boxShadow: [
                BoxShadow(
                  color: Colors.yellow.withOpacity(
                      0.8), // Adjust the color and opacity as needed
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: InkWell(
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
                child: Image.asset(
                  "images/m5.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
              onTap: () {
                print("Lorans");
              },
            ),
          ),
        ],
      ),
    ));
  }
}
