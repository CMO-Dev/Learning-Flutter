import 'package:flutter/material.dart';
import 'package:flutter_model/models/image_model.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.android),
          title: Text("Flutter"),
          actions: [
            Icon(Icons.cloud_upload),
            Icon(Icons.comment),
            Icon(Icons.contacts),
          ],
        ),
        body: Text("counter: $counter"),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.android),
          onPressed: () {
            setState(
              () {
                print("You pushed the button");
                counter++;
                var imageModel = ImageModel(
                  id: counter,
                  url: "url",
                  title: "title",
                );
                print("imageModel: $imageModel");
              },
            );
          },
        ),
      ),
    );
  }
}
