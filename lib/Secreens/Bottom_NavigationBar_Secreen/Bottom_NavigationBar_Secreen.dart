import 'package:flutter/material.dart';

import 'package:shopapp/Secreens/Bottom_NavigationBar_Secreen/Profile_Secreen.dart';
import 'package:shopapp/Secreens/cart_Secreen.dart';

import '../Main_End_User.dart';

class ButtomNavigationScreen extends StatefulWidget {
  ButtomNavigationScreen({super.key});

  @override
  State<ButtomNavigationScreen> createState() => _ButtomNavigationScreenState();
}

class _ButtomNavigationScreenState extends State<ButtomNavigationScreen> {
  int _selectedIndex = 0;

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print('$_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // bodyScreens.elementAt(_selectedIndex),
          Builder(
        builder: (BuildContext context) {
          return _selectedIndex == 0
              ? const Main_Enduser_Serceen()
              : _selectedIndex == 1
                  ? const Profile_Secreen()
                  : const Profile_Secreen();
        },
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.yellow,
              blurRadius: 20,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: const Color(0xff000000),
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFDD835),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Cart_Secreen();
              },
            ),
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
