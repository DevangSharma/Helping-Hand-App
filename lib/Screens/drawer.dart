import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0.0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Ashish Rawat"),
              accountEmail: Text("ashishrawat2911@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blue
                        : Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("About Us"),
            ),

            ListTile(
              leading: Icon(Icons.language),
              title: Text("Our Website"),
            ),

            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact Us"),
            ),

            ListTile(
              leading: Icon(Icons.tablet_mac),
              title: Text("Connect Us on Social Media"),
            ),

            Container(),

            Container(
              child: Row(
                children: [
                  IconButton(icon: Icon(Icons.phone), onPressed: null),
                  IconButton(icon: Icon(Icons.mail), onPressed: null),
                ],
              ),
            )
          ],
        ),
      );
  }
}