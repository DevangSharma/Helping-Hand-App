import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      borderOnForeground: true ,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 100,
                child: Text("Ds",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Devang Sharma",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),

              ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Honorable Member",
                              style: TextStyle( fontSize: 30),),
),
            
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Helping Hand Foundation Bikaner",
                              style: TextStyle( fontSize: 20),),
),
            
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I am a Helping Hand"),

        actions: [
          IconButton(icon: Icon(Icons.share), onPressed: (){})
        ],
      ),  

      body: Center(
        child: Profile(),
      ),    
    );
  }
}