import 'package:flutter/material.dart';
import 'MyCard.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Mi primera app'),
            elevation: 1.0,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add_alert))
            ],
            backgroundColor: Colors.deepPurpleAccent,
          ),
          floatingActionButton: FloatingActionButton(
            elevation: 3.0,
            child: Icon(Icons.add),
            onPressed: () {},
            backgroundColor: Colors.purple,
            tooltip: 'Add',
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          backgroundColor: Colors.deepPurple,
          drawer: Drawer(
              child: Text('Drawer')
          ),
          body: Column(
              children: [
                Expanded(
                    child: ListView(
                      padding: const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
                      children: [
                        CardApp(),
                        CardApp(),
                        CardApp(),
                        CardApp(),
                        CardApp(),
                        CardApp(),
                        CardApp(),
                        CardApp()
                      ],
                    )
                )
              ]
          )
      ),
    );
  }
}