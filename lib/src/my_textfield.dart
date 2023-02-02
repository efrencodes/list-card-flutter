import 'package:flutter/material.dart';

class MyTextfield extends StatefulWidget {
  @override
  _MyTextfieldState createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  final TextEditingController _controller = TextEditingController();
  List<String> collections = ['Mandame dinero'];

  void onSubmitted (String value) {
    setState(() {
      collections.add(value);
      _controller.clear();
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
              onPressed: onPressed
              // {
              //   showDialog(
              //       context: context,
              //       builder: (BuildContext context) => AlertDialog(
              //         content: const Text('Delete tasks?'),
              //         actions: [
              //           TextButton(
              //             onPressed: () => Navigator.pop(context, 'Cancel'),
              //             child: const Text('Cancel'),
              //           ),
              //           TextButton(
              //             onPressed: () => Navigator.pop(context, 'OK'),
              //             child: const Text('OK'),
              //           ),
              //         ],
              //       )
              //   );
              // }
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
                  decoration: const InputDecoration(
                    label: Text('New tasks'),
                    icon: Icon(Icons.add_circle),
                    iconColor: Colors.red
                  ),
                  onSubmitted: onSubmitted,
                )
              ),
              Expanded(
                child: ListView(
                  children: [
                    for(var item in collections)
                      ListTile(
                        dense: true,
                        leading: const Icon(Icons.favorite, color: Colors.red),
                        title: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          )
                      )
                    )
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}