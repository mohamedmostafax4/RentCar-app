// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 136, 0),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(80))),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/BMW_logo_%28gray%29.svg/2048px-BMW_logo_%28gray%29.svg.png",
                    height: 100,
                    width: 100,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40, left: 200),
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                )
              ],
            ),
          ), //FullName
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 9,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ], borderRadius: BorderRadius.circular(35)),
            margin: EdgeInsets.only(top: 40, left: 40, right: 40),
            child: TextFormField(
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide(width: 0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'Fullname',
                  prefixIcon: Icon(Icons.person)),
            ),
          ), //Email
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 9,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ], borderRadius: BorderRadius.circular(35)),
            margin: EdgeInsets.only(top: 20, left: 40, right: 40),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide(width: 0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email_rounded)),
            ),
          ), //Phone Number
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 9,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ], borderRadius: BorderRadius.circular(35)),
            margin: EdgeInsets.only(top: 20, left: 40, right: 40),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide(width: 0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'Phone Number',
                  prefixIcon: Icon(Icons.phone_rounded)),
            ),
          ), //password
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 9,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ], borderRadius: BorderRadius.circular(35)),
            margin: EdgeInsets.only(top: 20, left: 40, right: 40),
            child: TextFormField(
              obscureText: true,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide(width: 0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'Paswword',
                  prefixIcon: Icon(Icons.key_rounded)),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 60),
            width: 300,
            height: 50,
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35))),
                    backgroundColor: MaterialStatePropertyAll(
                      const Color.fromARGB(255, 240, 136, 0),
                    )),
                onPressed: () {
                  Navigator.of(context).pushNamed("SplashScreen");
                },
                child: Text("REGISTER")),
          ),

          Container(
            margin: EdgeInsets.only(top: 30, left: 110),
            child: Row(
              children: [
                Text("Already a member?"),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'LogIn',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 240, 136, 0)),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
