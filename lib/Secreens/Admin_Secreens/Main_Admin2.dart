import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Main_Admin2 extends StatefulWidget {
  const Main_Admin2({super.key});

  @override
  State<Main_Admin2> createState() => _Main_Admin2State();
}

class _Main_Admin2State extends State<Main_Admin2> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _phonecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text("Add Photo"),
          SizedBox(
            height: 250,
          ),
          Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text(
              "Name :",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              controller: _namecontroller,
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return "name must not be empty";
                }
                return null;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Name'),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text(
              "Email :",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              controller: _emailcontroller,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return "email must not be empty";
                }
                return null;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Email'),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text(
              "Phone :",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              controller: _phonecontroller,
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return "phone must not be empty";
                }
                return null;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Phone'),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text(
              "Password :",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              controller: _passwordcontroller,
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return "name must not be Password";
                }
                return null;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Password'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Add Resturant",
                style: TextStyle(color: Colors.black),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
            ),
          )
        ],
      ),
    ));
  }
}
