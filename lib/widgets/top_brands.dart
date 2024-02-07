// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_own_app/screens/topBrandsScreens/bmw.dart';
import 'package:my_own_app/screens/topBrandsScreens/nissan.dart';
import 'package:my_own_app/screens/topBrandsScreens/toyota.dart';
import 'package:my_own_app/screens/topBrandsScreens/volks_wagen.dart';

class TopBrands extends StatefulWidget {
  TopBrands({
    super.key,
  });

  @override
  State<TopBrands> createState() => _TopBrandsState();
}

class _TopBrandsState extends State<TopBrands> {
  List<String> brands = [
    'images/bmw.png',
    'images/volksWagen.png',
    'images/Nissan.png',
    'images/Toyota Logo.png'
  ];

  @override
  Widget build(BuildContext context) {
    double sideLength = 70;

    return SizedBox(
        height: 70,
        child: ListView(
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(100),
                highlightColor: Color.fromARGB(255, 57, 0, 148),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => BMW()));
                },
                radius: 20,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.all(10),
                  height: sideLength,
                  width: sideLength,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(brands[0]),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(100),
                highlightColor: Color.fromARGB(255, 57, 0, 148),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => VW()));
                },
                radius: 20,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.all(10),
                  height: sideLength,
                  width: sideLength,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(brands[1]),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(100),
                highlightColor: Color.fromARGB(255, 57, 0, 148),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Nissan()));
                },
                radius: 20,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.all(10),
                  height: sideLength,
                  width: sideLength,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(brands[2]),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(100),
                highlightColor: Color.fromARGB(255, 57, 0, 148),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Toyota()));
                },
                radius: 20,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.all(10),
                  height: sideLength,
                  width: sideLength,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(brands[3]),
                ),
              ),
            ]));
  }
}
