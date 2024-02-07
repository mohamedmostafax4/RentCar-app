// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_own_app/screens/mainScreens/HomePage.dart';

class ListHead extends StatelessWidget {
  const ListHead({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            title,
            style: GoogleFonts.ptSans(
                color: textColor, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 20),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'View All',
                style: TextStyle(
                    color: Color.fromARGB(255, 160, 160, 160), fontSize: 21),
              )),
        )
      ],
    );
  }
}
