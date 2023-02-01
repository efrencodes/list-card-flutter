import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton>{
  List<String> collections = ['Efren', 'Martinez', 'Rodriguez'];
  int index = 0;
  String label = '';

  void onPressButton () {
    setState(() {
      label = collections[index];
      index = index < collections.length - 1 ? index + 1 : 0;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Mi segunda app'),
          elevation: 2.0,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(label,
                  style: TextStyle(fontSize: 30.0)
                ),
                Padding(padding: EdgeInsets.all(20.0)),
                ElevatedButton(
                  onPressed: onPressButton,
                  child: Text('Actualizar')
                )
              ],
            ),
          )
        )
      )
    );
  }
}