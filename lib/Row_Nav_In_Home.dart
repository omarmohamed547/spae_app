import 'package:flutter/material.dart';

class RowNavigationHome extends StatelessWidget {
  String text;
  RowNavigationHome({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(), backgroundColor: Color(0xffEE403D)),
          onPressed: () {},
          child: Image.asset("assets/icons/Arrow 3.png"),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(), backgroundColor: Color(0xffEE403D)),
          onPressed: () {},
          child: Image.asset("assets/icons/Arrow 1.png"),
        ),
      ],
    );
  }
}
