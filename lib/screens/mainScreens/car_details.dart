import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_own_app/screens/mainScreens/HomePage.dart';

class DetailsCard extends StatefulWidget {
  final data;
  const DetailsCard({super.key, this.data});

  @override
  State<DetailsCard> createState() => _DetailsCardState();
}

class _DetailsCardState extends State<DetailsCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: textColor,
          elevation: 0,
          shape: ContinuousRectangleBorder(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(150)),
              side: BorderSide(color: Colors.black)),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          )),
      body: Flex(direction: Axis.vertical, children: [
        Expanded(flex: 3, child: Image.asset(widget.data['image'])),
        Expanded(
          child: Text(
            widget.data['carType'],
            textAlign: TextAlign.center,
            style: GoogleFonts.ptSans(
                color: textColor, fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Text(
            widget.data['carBrand'],
            textAlign: TextAlign.center,
            style: GoogleFonts.ptSans(
                color: textColor, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Text.rich(
            textAlign: TextAlign.center,
            TextSpan(children: [
              TextSpan(
                text: '${widget.data['carPrise'].toString()}\$',
                style: GoogleFonts.ptSans(
                    color: textColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(text: '/per day')
            ]),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 70,
          child: Row(
            children: [
              Container(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Rent'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(textColor)),
                  )),
              Expanded(flex: 2, child: SizedBox()),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Owner info',
                    style: TextStyle(color: textColor),
                  )),
              IconButton(onPressed: () {}, icon: Icon(Icons.phone_rounded))
            ],
          ),
        )
      ]),
    );
  }
}
