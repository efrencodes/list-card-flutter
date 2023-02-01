import 'package:flutter/material.dart';

class MyTextfield extends StatefulWidget {
  @override
  _MyTextfieldState createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  List<String> collections = ['hola', 'mundo'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mi tercera app'),
          centerTitle: false,
          backgroundColor: Colors.redAccent,
          elevation: 2.0,
        ),
        body: ListView(
          children: [
            for(int i = 0; i < collections.length; i++)
              ListTile(
                title: Text('$collections[$i]'),
                textColor: Colors.black87,
                leading: Icon(Icons.check_rounded, color: Colors.blueAccent,),
                onTap: () {},
              ),
          ],
        )
      ),
    );
  }
}