import 'package:flutter/material.dart';
import 'package:space_ass3/Home_Screen.dart';

class LoginScreen extends StatelessWidget {
  static const loginScreenId = "LoginScreen";
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Image.asset(
              fit: BoxFit.cover,
              "assets/images/48e3ac1944450fcae09e68a9ccd37c17 1.png"),
          const Text(
            " Explore\n The\n Universe",
            style: TextStyle(
                fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffEE403D)),
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, HomeScreen.homeScreenId);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          " Explore",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Image.asset("assets/icons/Arrow 1.png")
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
