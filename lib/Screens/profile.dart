import 'dart:io';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:screenshot/screenshot.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File screenshotImage;

  ScreenshotController screenshotController = ScreenshotController();

  takeScreenshot() {
    screenshotController.capture().then((File image) {
      //Capture Done
      setState(() {
        screenshotImage = image;
      });
    }).catchError((onError) {
      print(onError);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I am a Helping Hand"),
        actions: [
          IconButton(
              icon: Icon(Icons.share),
              onPressed: () async {
                takeScreenshot();

                print(screenshotImage.path);
                Share.shareFiles(
                  [screenshotImage.path],
                );
              })
        ],
      ),
      body: Center(
        child: Screenshot(
          controller: screenshotController,
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.amber, width: 2),
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            color: Colors.grey[200],
            borderOnForeground: true,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "I am a Helping Hand ",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage("assets/images/dev.jpg"),

                      //    Text("Ds",
                      //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80),),
                      // ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Devang Sharma",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Honorable Member",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Helping Hand Foundation Bikaner",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
