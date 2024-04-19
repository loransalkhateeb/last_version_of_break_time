import 'package:flutter/material.dart';

class Meal_Admin_Secreen extends StatefulWidget {
  const Meal_Admin_Secreen({super.key});

  @override
  State<Meal_Admin_Secreen> createState() => _Meal_Admin_SecreenState();
}

class _Meal_Admin_SecreenState extends State<Meal_Admin_Secreen> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _pricecontroller = TextEditingController();
  final TextEditingController _descriptionontroller = TextEditingController();
  final TextEditingController _typefoodcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              const Text(
                "Name:",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                width: 20,
              ),
              TextFormField(
                controller: _namecontroller,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "The name must not empty";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Image.asset(
                      "images/email 1.png",
                      width: 19,
                      height: 19,
                    ),
                    hintText: 'Name Product'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
