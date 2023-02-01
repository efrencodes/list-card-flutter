import 'package:flutter/material.dart';
import 'MyCard.dart';
import 'MyDrawer.dart';

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
              child: MyDrawer()
          ),
          body: Column(
              children: [
                Expanded(
                    child: ListView(
                      padding: const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
                      children: [
                        for (int i = 1; i <= 100; i++)
                          CardApp(
                              title: Text('$i - Card',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blueGrey
                                  )
                              ),
                              icon: Icon(Icons.favorite, color: Colors.red, size: 30.0)
                          ),
                      ],
                    )
                )
              ]
          )
      ),
    );
  }
}