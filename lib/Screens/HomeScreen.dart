import 'package:flutter/material.dart';
import 'drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
    title: Text("Helping Hand Foundation"),),
    
        drawer: DrawerList(),

         body: Column(  
        children: [  
         ListTile(
           title: Text("Last Payment done"),
           subtitle: Text("Date : 2 Jan. 2021"),
           leading: Icon(Icons.timer),
         ),

         Text("Monthly Plans"),
         Text("Enroll in a monthly plan"),
         Text("Donate Us"),
         Text("Donate"),

        ],  
      ),  
      );
  }
}
