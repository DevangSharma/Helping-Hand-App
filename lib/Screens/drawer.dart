import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'profile.dart';

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
                  onDetailsPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  accountName: Text("Devang Sharma"),
                  accountEmail: Text("debusharma1999@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "DS",
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () =>
                      launchURL("https://helpinghandfoundation.org.in/mission"),
                  leading: Icon(Icons.person),
                  title: Text("Our Mission"),
                ),
                ListTile(
                  onTap: () =>
                      launchURL("https://helpinghandfoundation.org.in/home"),
                  leading: Icon(Icons.language),
                  title: Text("Our Website"),
                ),
                ListTile(
                  onTap: () =>
                      launchURL("https://helpinghandfoundation.org.in/gallery"),
                  leading: Icon(Icons.image),
                  title: Text("Gallery"),
                ),
                ListTile(
                  onTap: () =>
                      launchURL("https://helpinghandfoundation.org.in/contact"),
                  leading: Icon(Icons.contacts),
                  title: Text("Contact Us"),
                ),
                ListTile(
                  onTap: () => launchURL(
                      "fb://profile/Helping-Hand-Foundation-Bikaner-107634127860400/"),
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
                IconButton(
                    icon: Icon(Icons.phone),
                    onPressed: () => launchURL("tel:<+919414430595>")),
                IconButton(
                    icon: Icon(Icons.mail),
                    onPressed: () =>
                        launchURL("mailto:helpinghandbikaner@gmail.com")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
