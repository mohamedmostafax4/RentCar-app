// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_own_app/screens/mainScreens/messages.dart';
import 'package:my_own_app/widgets/list_head.dart';
import 'package:my_own_app/widgets/most_rented_list.dart';
import 'package:my_own_app/widgets/search_intro.dart';
import 'package:my_own_app/widgets/top_brands.dart';
import 'package:my_own_app/screens/mainScreens/notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Color widgetColor = Color.fromARGB(128, 255, 255, 255);
Color textColor = Color.fromARGB(255, 57, 0, 148);

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 234, 234),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: const Color.fromARGB(0, 255, 193, 7),
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Colors.black,
              size: 30,
            ),
            icon: Icon(
              Icons.home_outlined,
              color: textColor,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.notifications_sharp,
              color: Colors.black,
              size: 30,
            ),
            icon: Badge(
                child: Icon(
              Icons.notifications_none,
              color: textColor,
            )),
            label: 'Notifications',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.messenger_sharp,
              color: Colors.black,
              size: 30,
            ),
            icon: Badge(
              label: Text('2'),
              child: Icon(
                Icons.messenger_outline,
                color: textColor,
              ),
            ),
            label: 'Messages',
          ),
        ],
      ),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        backgroundColor: const Color.fromARGB(0, 255, 193, 7),
        elevation: 0,
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Rent',
                style: GoogleFonts.ptSans(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: 'Plus',
                style: GoogleFonts.ptSans(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 57, 0, 148),
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: <Widget>[
        /// Home page
        SafeArea(
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 20,
              ),
              SearchIntro(),
              SizedBox(
                height: 10,
              ),
              ListHead(
                title: 'Top Brand',
              ),
              TopBrands(),
              SizedBox(
                height: 10,
              ),
              ListHead(title: 'Most Rented'),
              MostRentedList()
            ],
          ),
        ),
// .............................................................................
        /// Notifications page
        Notif(),

        /// Messages page
        Messages(),
      ][currentPageIndex],
    );
  }
}
