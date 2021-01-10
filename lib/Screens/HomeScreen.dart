import 'package:flutter/material.dart';
import 'drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    
    int amount = 300;

    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Helping Hand Foundation"),
      ),
      drawer: DrawerList(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                title: Text("Last Payment done"),
                subtitle: Text("Date : 2 Jan. 2021"),
                leading: Icon(Icons.timer),
              ),

              Divider( thickness: 2,),

              ListTile(
                title: Text("Next Payment"),
                subtitle: Text("Date : 2 Feb. 2021"),
                leading: Icon(Icons.timer),
              ),
              Container(
                height: screenHeight * 0.02,
                child: Divider(
                  thickness: 2,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    screenWidth * 0.1,
                    screenHeight * 0.01,
                    screenWidth * 0.1,
                    screenHeight * 0.01),
                child: Table(
                  border: TableBorder(
                      horizontalInside: BorderSide(
                          width: 1,
                          color: Colors.amber,
                          style: BorderStyle.solid)),
                  children: [
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Select Plan',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Monthly Charges',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                      ),
                    ]),
                    TableRow(
                      
                      children: [
                    
                      Radio(
                        value: 150,
                        groupValue: amount,
                        onChanged: (value) {
                                                    print(amount);

                          setState(() {
                            amount = 150;
                            
                          });
                          print(amount);
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('₹ 150', textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),),
                      ),
                    ]),
                    TableRow(
                      
                      children: [
                    
                      Radio(
                        value: 300,
                        groupValue: amount,
                        onChanged: (value) {
                                                    print(amount);

                          setState(() {
                            amount = value;
                          });                          print(amount);

                        },
                        
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('₹ 300', textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),),
                      ),
                    ]),
                    TableRow(
                      
                      children: [
                    
                      Radio(
                        value: 500,
                        groupValue: amount,
                        onChanged: (value) {
                                                    print(amount);

                          setState(() {
                            amount = value;
                          });                          print(amount);

                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('₹ 500', textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),),
                      ),
                    ]),
                  ],
                ),
              ),
              Container(
                height: screenHeight * 0.02,
                
              ),
              RaisedButton(
                color: Colors.amber,
                onPressed: () {},
                child: Text("Pay for chosen monthly plan"),
              ),
              Container(
                height: screenHeight * 0.04,
                child: Divider(
                  thickness: 2,
                ),
              ),
              RaisedButton(
                color: Colors.amber,
                onPressed: () {},
                child: Text("One Time Donation"),
              ),
              Container(
                height: screenHeight * 0.02,
              ),
              Spacer(),
              Text(
                "!! सेवा ही जीवन है !!",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
