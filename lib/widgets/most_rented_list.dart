// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_own_app/screens/mainScreens/HomePage.dart';
import 'package:my_own_app/screens/mainScreens/car_details.dart';
import 'package:my_own_app/services/cars_list.dart';

class MostRentedList extends StatelessWidget {
  MostRentedList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8),
      height: 270,
      child: Align(
        alignment: Alignment.topLeft,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: cars['mostRented']?.length,
          itemBuilder: (context, index) {
            return InkWell(
              splashColor: textColor,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsCard(
                    data: cars['mostRented']![index],
                  ),
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(128, 255, 255, 255)),
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        cars['mostRented']![index]['image'],
                        width: 250,
                        height: 170,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        cars['mostRented']?[index]['carType'],
                        style: GoogleFonts.ptSans(
                            color: textColor,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        cars['mostRented']?[index]['carBrand'],
                        style: GoogleFonts.ptSans(
                            color: textColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Text(
                            '${cars['mostRented']?[index]['carPrise']}\$',
                            style: GoogleFonts.ptSans(
                                color: textColor,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          Text('/per day'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
