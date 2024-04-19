import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/Elevated_Button.dart';
import '../Widgets/Text_Button.dart';
import 'Check_Secreen.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  Widget dotpageview() {
    return Builder(
      builder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 3; i++)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: i == pagenumber ? 99 : 42,
                height: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: i == pagenumber
                        ? const Color(0xFFFDD835)
                        : const Color(0xffD9D9D9)),
              ),
          ],
        );
      },
    );
  }

  PageController nextpage = PageController();
  int pagenumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      onPageChanged: (value) {
        setState(() {
          pagenumber = value;
        });
      },
      controller: nextpage,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 30),
              child: Align(
                alignment: Alignment.topRight,
                child: Skip_Text_Button(
                    ontap: () {
                      print("Lorans");
                    },
                    text: "Skip"),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 17, top: 40),
                child: Image.asset("images/Order food-pana 1.png")),
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Order your food",
              style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "now you can order your \n\t\t\t\t\t\tfood any time right your \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\of your mobile.",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            dotpageview(),
            const SizedBox(
              height: 50,
            ),
            Elevaed_Button(
              text: 'Continue',
              ontap: () {
                nextpage.animateToPage(1,
                    duration: const Duration(milliseconds: 700),
                    curve: Curves.easeIn);
              },
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 30),
              child: Align(
                alignment: Alignment.topRight,
                child: Skip_Text_Button(
                    ontap: () {
                      print("Lorans");
                    },
                    text: "Skip"),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 17, top: 40),
                child: Image.asset("images/Take Away-pana 1.png")),
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Live Tracking",
              style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Real time tracking of your \n\t\t\t\t\t\tfood on the app once you \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\placed the order",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            dotpageview(),
            const SizedBox(
              height: 50,
            ),
            Elevaed_Button(
              text: 'Continue',
              ontap: () {
                nextpage.animateToPage(2,
                    duration: const Duration(milliseconds: 700),
                    curve: Curves.easeIn);
              },
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: Skip_Text_Button(
                    ontap: () {
                      print("Lorans");
                    },
                    text: "Skip"),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Image.asset("images/In no time-pana 1.png")),
            const SizedBox(
              height: 120,
            ),
            const Text(
              "Quick Delivery",
              style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Order your favorite meals\n\t\t\t\t\t\twill be immediately deliver\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\of your comfort",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            dotpageview(),
            const SizedBox(
              height: 70,
            ),
            Elevaed_Button(
              text: 'Continue',
              ontap: () {
                Navigator.pushReplacement<void, void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Cehck_Scereen(),
                  ),
                );
              },
            )
          ],
        ),
      ],
    ));
  }
}
