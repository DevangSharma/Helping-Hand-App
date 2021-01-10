import 'package:flutter/material.dart';
import 'drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Helping Hand Foundation"),
      ),
      drawer: DrawerList(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight*0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                title: Text("Last Payment done"),
                subtitle: Text("Date : 2 Jan. 2021"),
                leading: Icon(Icons.timer),
              ),
              
              

              ListTile(
                title: Text("Next Payment"),
                subtitle: Text("Date : 2 Feb. 2021"),
                leading: Icon(Icons.timer),
              ),
              
              Container(
                height: screenHeight*0.02,
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(screenWidth * 0.1,
                    screenHeight * 0.01, screenWidth * 0.1, screenHeight * 0.01),
                child: Table(
                  children: [
                    TableRow(children: [
                      TableCell(child: Center(child: Text("Plan Name"))),
                      TableCell(child: Center(child: Text("Monthly Charges"))),
                      TableCell(child: Center(child: Text("Daily Worth"))),
                    ]),
                    TableRow(children: [
                      TableCell(child: Center(child: Text("Hello"))),
                      TableCell(child: Center(child: Text("Hello"))),
                      TableCell(child: Center(child: Text("Hello"))),
                    ]),
                    TableRow(children: [
                      TableCell(child: Center(child: Text("Hello"))),
                      TableCell(child: Center(child: Text("Hello"))),
                      TableCell(child: Center(child: Text("Hello"))),
                    ]),
                    TableRow(children: [
                      TableCell(child: Center(child: Text("Hello"))),
                      TableCell(child: Center(child: Text("Hello"))),
                      TableCell(child: Center(child: Text("Hello"))),
                    ]),
                  ],
                ),
              ),

              Container(
                height: screenHeight*0.02,
              ),

              RaisedButton(
                color: Colors.amber,
                onPressed: () {},
                child: Text("Register for monthly plan"),
                ),

                Container(
                height: screenHeight*0.02,
              ),

          
        
              RaisedButton(
                color: Colors.amber,
                onPressed: () {},
                child: Text("One Time Donation"),
                ),

                Container(
                height: screenHeight*0.02,
              ),

                    Text("!! सेवा ही जीवन है !!", style: TextStyle(
                      fontSize: 30,
                    ),),
            ],
          ),
        ),
      ),
    );
  }
}
