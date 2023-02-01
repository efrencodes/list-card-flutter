import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(left:10.0, top: 10.0, right: 10.0),
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            image: const DecorationImage(
              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: const Text('Drawer Header'),
        ),
        for(int i = 1; i <= 100; i++)
          ListTile(
            title: Text('Item Example'),
            subtitle: Text('#$i'),
            textColor: Colors.black87,
            leading: Icon(Icons.cancel_rounded, color: Colors.blueAccent,),
            onTap: () {},
          ),
      ],
    );
  }
}