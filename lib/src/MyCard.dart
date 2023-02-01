import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
  final Widget title;
  final Widget icon;

  CardApp({super.key, required this.title, required this.icon });
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  this.title,
                  this.icon
                ]
            )
        )
    );
  }
}