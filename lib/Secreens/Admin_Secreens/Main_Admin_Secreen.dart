import 'package:flutter/material.dart';
import 'package:shopapp/Secreens/Admin_Secreens/Meal2.dart';

class Main_Admin_Secreen extends StatefulWidget {
  const Main_Admin_Secreen({super.key});

  @override
  State<Main_Admin_Secreen> createState() => _Main_Admin_SecreenState();
}

class _Main_Admin_SecreenState extends State<Main_Admin_Secreen> {
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
              const Text("Admin Secreen"),
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
              child: Meal_Admin_Secreen(),
            ),
            Center(
              child: Text("data"),
            ),
            Center(
              child: Text("data"),
            ),
          ],
        ),
      ),
    );
  }
}
