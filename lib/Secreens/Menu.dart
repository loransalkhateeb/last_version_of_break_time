import 'package:flutter/material.dart';
import 'package:shopapp/Secreens/Bottom_NavigationBar_Secreen/Bottom_NavigationBar_Secreen.dart';
import 'package:shopapp/Secreens/Menu_Secreens/Meal_Secreen.dart';
import 'package:shopapp/Secreens/Menu_Secreens/Sneak_Secreen.dart';
import 'package:shopapp/Secreens/Menu_Secreens/drinks_Secreen.dart';

class TabbarExample extends StatefulWidget {
  const TabbarExample({Key? key}) : super(key: key);

  @override
  State<TabbarExample> createState() => _TabbarExampleState();
}

class _TabbarExampleState extends State<TabbarExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Our Menu"),
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
          ),
          backgroundColor: Colors.white,
          bottom: const TabBar(
            labelColor: Colors.red,
            unselectedLabelColor: Colors.black,
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.amberAccent,
            tabs: [
              Tab(
                text: "Meals",
              ),
              Tab(
                text: "Drinks",
              ),
              Tab(
                text: "Snake",
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Meal_Secreen(),
            ),
            Center(
              child: Drinks_Secreen(),
            ),
            Center(
              child: Snake_Secreen(),
            ),
          ],
        ),
      ),
    );
  }
}
