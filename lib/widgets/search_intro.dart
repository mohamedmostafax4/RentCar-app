import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_own_app/screens/mainScreens/HomePage.dart';

class SearchIntro extends StatelessWidget {
  const SearchIntro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: widgetColor, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'With Corporate Difference',
            style: GoogleFonts.ptSans(
                color: textColor, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'Enjoy the fun driving in Enterprise',
            style: GoogleFonts.ptSans(
              color: textColor,
              fontSize: 15,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 270,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Search a car',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: textColor),
                child: const Icon(
                  Icons.manage_search_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
