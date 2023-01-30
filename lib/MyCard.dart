import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('I love flutter',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey
                      )
                  ),
                  Icon(Icons.favorite, color: Colors.red, size: 30.0)
                ]
            )
        )
    );
  }
}