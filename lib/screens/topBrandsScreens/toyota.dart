// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_own_app/screens/mainScreens/HomePage.dart';
import 'package:my_own_app/screens/mainScreens/car_details.dart';
import 'package:my_own_app/services/cars_list.dart';

class Toyota extends StatelessWidget {
  const Toyota({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 234, 234, 234),
        body: SafeArea(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                height: 80,
                child: Image.asset('images/Toyota Logo.png'),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 290,
                  // Adjust the height here
                ),
                itemCount: cars['Toyota']?.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: textColor,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailsCard(
                          data: cars['Toyota']![index],
                        ),
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(128, 255, 255, 255)),
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              cars['Toyota']?[index]['image'],
                              width: 250,
                              height: 170,
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              cars['Toyota']![index]['carType'].toString(),
                              style: GoogleFonts.ptSans(
                                  color: textColor,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              cars['Toyota']![index]['carBrand'].toString(),
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
                                  '${cars['Toyota']?[index]['carPrise']}\$',
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
              Center(
                  child: Text(
                'Coming Soon...',
                style: GoogleFonts.ptSans(
                    color: textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ))
            ],
          ),
        ));
  }
}
