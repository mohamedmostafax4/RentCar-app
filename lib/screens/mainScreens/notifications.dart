// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Notif extends StatelessWidget {
  const Notif({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.notifications_sharp),
                title: Text('Notif 1'),
                subtitle: Text('This is a notification'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.notifications_sharp),
                title: Text('Notif 2'),
                subtitle: Text('This is a notification'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
