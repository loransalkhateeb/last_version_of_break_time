import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/Const_Values.dart';
import 'package:shopapp/Secreens/Bottom_NavigationBar_Secreen/Profile_Secreen.dart';
import 'package:shopapp/Secreens/Login_Secreen.dart';
import 'package:shopapp/Widgets/Elevated_Button.dart';
import 'package:shopapp/general.dart';

import 'package:http/http.dart' as http;

class Setting_Secreen extends StatefulWidget {
  const Setting_Secreen({super.key});

  @override
  State<Setting_Secreen> createState() => _Setting_SecreenState();
}

class _Setting_SecreenState extends State<Setting_Secreen> {
  final TextEditingController _email = TextEditingController();

  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();
  final TextEditingController _username = TextEditingController();

  @override
  void initState() {
    getinfo();
    super.initState();
  }

  getinfo() async {
    General.getPrefString(Const_Values.email, "")
        .then((value) => _email.text = value);
    General.getPrefString(Const_Values.name, "")
        .then((value) => _username.text = value);
    General.getPrefString(Const_Values.password, "")
        .then((value) => _password.text = value);
    General.getPrefString(Const_Values.password, "")
        .then((value) => _confirmpassword.text = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              height: 129,
              color: const Color(0xff707070).withOpacity(0.2),
              child: Padding(
                padding: const EdgeInsets.only(left: 17, right: 17),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xffFFFFFF),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 22,
                            color: Color(0xff2A2A2A),
                          ),
                          onPressed: () {    
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const Profile_Secreen();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    const Text(
                      "Setting_Secreen",
                      style: TextStyle(
                          color: Color(0xff2A2A2A),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(26),
              child: TextField(
                controller: _email,
                decoration: InputDecoration(
                  icon: const Icon(Icons.email),
                  label: const Text("Email"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(26),
              child: TextField(
                controller: _username,
                decoration: InputDecoration(
                  icon: const Icon(Icons.person),
                  label: const Text("User_Name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(26),
              child: TextField(
                obscureText: true,
                controller: _password,
                decoration: InputDecoration(
                  icon: const Icon(Icons.password),
                  label: const Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(26),
              child: TextField(
                controller: _confirmpassword,
                obscureText: true,
                decoration: InputDecoration(
                  icon: const Icon(Icons.password),
                  label: const Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Elevaed_Button(
              text: 'Save Changes',
              ontap: () {
                if (_password.text == _confirmpassword.text) {
                  updateProfile();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Login_Secreen();
                      },
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        icon: const Icon(Icons.error),
                        content: const Text("The password is incorrect"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }

  updateProfile() async {
    General.getPrefString(Const_Values.id, "").then((idUser) async {
      final response = await http.post(
        Uri.parse("${Const_Values.baseurl}update_profile.php"),
        body: {
          "id": idUser,
          "email_address": _email.text,
          "user_name": _username.text,
          "pas": _password.text,
          "pas": _password.text
        },
      );
      if (response.statusCode == 200) {
        General.savePrefString(Const_Values.name, _username.text);
        General.savePrefString(Const_Values.email, _email.text);
        General.savePrefString(Const_Values.password, _password.text);
        General.savePrefString(Const_Values.password, _confirmpassword.text);
        getinfo();
      }
    });
  }
}
