// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_own_app/screens/mainScreens/HomePage.dart';
import 'package:my_own_app/screens/mainScreens/car_details.dart';
import 'package:my_own_app/services/cars_list.dart';

class VW extends StatelessWidget {
  const VW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 234, 234, 234),
        body: SafeArea(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              CircleAvatar(
                radius: 50,
                child: Image.asset('images/volksWagen.png'),
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
                itemCount: cars['VW']?.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: textColor,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailsCard(
                          data: cars['VW']![index],
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
                              cars['VW']?[index]['image'],
                              width: 250,
                              height: 170,
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              cars['VW']![index]['carType'].toString(),
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
                              cars['VW']![index]['carBrand'].toString(),
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
                                  '${cars['VW']?[index]['carPrise']}\$',
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
