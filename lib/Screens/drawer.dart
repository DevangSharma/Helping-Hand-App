import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Drawer(
      // column holds all the widgets in the drawer
      child: Column(
        children: <Widget>[
          Expanded(
            // ListView contains a group of widgets that scroll inside the drawer
            child: ListView(
          padding: const EdgeInsets.all(0.0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Devang Sharma"),
              accountEmail: Text("debusharma1999@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blue
                        : Colors.white,
                child: Text(
                  "DS",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Our Mission"),
            ),

            ListTile(
              leading: Icon(Icons.language),
              title: Text("Our Website"),
            ),

            ListTile(
              leading: Icon(Icons.image),
              title: Text("Gallery"),
            ),

            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact Us"),
            ),

            ListTile(
              leading: Icon(Icons.tablet_mac),
              title: Text("Connect Us on Social Media"),
            ),


            
          ],
        ),
          ),
          // This container holds the align
          Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(icon: Icon(Icons.phone), onPressed: ()  {}),
                  IconButton(icon: Icon(Icons.mail), onPressed: (){}),
                ],
              ),
            ),
        ],
      ),
    );
  }
}