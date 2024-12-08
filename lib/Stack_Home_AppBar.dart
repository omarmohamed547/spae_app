import 'package:flutter/material.dart';

class StackHomeAppBar extends StatelessWidget {
  String text1;
  String text2;
  String image;
  bool showButton;
  StackHomeAppBar({
    required this.text1,
    required this.text2,
    required this.image,
    this.showButton = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.asset(width: double.infinity, fit: BoxFit.fill, image),
        showButton
            ? Positioned(
                top: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Color(0xffEE403D)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset("assets/icons/Arrow 3.png"),
                ),
              )
            : SizedBox.shrink(),
        Positioned(
          top: 50,
          left: 160,
          child: Text(
            text1,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xffFFFFFF)),
          ),
        ),
        Text(
          text2,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xffFFFFFF)),
        )
      ],
    );
  }
}
