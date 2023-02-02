import 'package:flutter/material.dart';

class MyTextfield extends StatefulWidget {
  @override
  _MyTextfieldState createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  final TextEditingController _controller = TextEditingController();
  List<String> collections = [];

  void onSubmitted (String value) {
    setState(() {
      collections.add(value);
      _controller.text = '';
    });
  }

  void onPressed () {
    setState(() {
      collections.clear();
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Todo List'),
          centerTitle: false,
          backgroundColor: Colors.redAccent,
          elevation: 2.0,
          actions: [
            IconButton(
              icon: const Icon(Icons.delete_forever),
              onPressed: onPressed,
            )
          ],
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25.0, left: 10.0, right: 10.0, bottom: 25.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    label: Text('New tasks'),
                    icon: Icon(Icons.add_circle),
                    iconColor: Colors.red
                  ),
                  onSubmitted: onSubmitted,
                )
              ),
              // ListView(
              //   children: [
              //     for(var item in collections)
              //       ListTile(
              //         title: Text(
              //           item,
              //           style: const TextStyle(
              //           fontSize: 17.0,
              //           fontWeight: FontWeight.w400,
              //           color: Colors.black,
              //         ),
              //       ),
              //     )
              //   ],
              // )
              for(var item in collections)
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                  child: Text(item,
                    style: const TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}