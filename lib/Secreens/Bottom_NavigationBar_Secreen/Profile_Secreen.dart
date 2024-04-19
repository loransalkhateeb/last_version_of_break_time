import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/Const_Values.dart';
import 'package:shopapp/Secreens/Payments_Secreen.dart';
import 'package:shopapp/Secreens/Splash_Secreen.dart';
import 'package:shopapp/general.dart';
import '../Setting_Secreen.dart';

class Profile_Secreen extends StatefulWidget {
  const Profile_Secreen({super.key});

  @override
  State<Profile_Secreen> createState() => _Profile_SecreenState();
}

class _Profile_SecreenState extends State<Profile_Secreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Row(
              children: [
                CircleAvatar(
                  maxRadius: 40,
                  minRadius: 40,
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  child: Image.asset("images/Mask group.png"),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Text(
                      "Hamza Nidal Abu Awad",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            isThreeLine: false,
            leading: Image.asset("images/account.png"),
            contentPadding: EdgeInsets.only(top: 20, left: 20),
            title: Text("Menu Item"),
            onTap: () {},
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 2,
            color: Colors.grey,
          ),
          ListTile(
            isThreeLine: false,
            leading: Image.asset("images/credit-card.png"),
            contentPadding: EdgeInsets.only(top: 20, left: 20),
            title: Text("Payments"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Payments_Secreen();
                  },
                ),
              );
            },
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 2,
            color: Colors.grey,
          ),
          ListTile(
            isThreeLine: false,
            leading: Icon(Icons.settings),
            contentPadding: EdgeInsets.only(top: 20, left: 20),
            title: Text("Settings"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Setting_Secreen();
                  },
                ),
              );
            },
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 2,
            color: Colors.grey,
          ),
          ListTile(
            isThreeLine: false,
            leading: Icon(Icons.sign_language),
            contentPadding: EdgeInsets.only(top: 20, left: 20),
            title: Text("Language"),
            onTap: () {
              print("Lorans_Alkhateeb");
            },
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 2,
            color: Colors.grey,
          ),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: EdgeInsets.only(right: 220),
            child: Column(
              children: [
                Text(
                  "Logout",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              icon: const Icon(Icons.logout_sharp),
                              content:
                                  const Text("Are You Sure You Want To LogOut"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Cancel"),
                                ),
                                TextButton(
                                  onPressed: () async {
                                    await General.remove(Const_Values.id);
                                    Navigator.pop(context);
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const splash_secreen();
                                        },
                                      ),
                                    );
                                  },
                                  child: const Text("OK"),
                                ),
                              ],
                            );
                          });
                    },
                    icon: Icon(
                      Icons.logout,
                      color: Color(0xff9B1A19),
                    ))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
