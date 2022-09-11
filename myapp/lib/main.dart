import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  List catImages = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
  ];
  List catBreeds = [
    "Scoottish fold",
    "Sphynx",
    "Ragdoll",
  ];
  List catgender = [
    "Fmail",
    "Mail",
    "Fmail",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leadingWidth: 20,
        titleSpacing: 100,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.grey[600],
        title: Text(
          "Cats Store",
          textAlign: TextAlign.center,
        ),
        leading: Icon(
          color: Colors.black,
          Icons.pets,
          size: 30,
        ),
      ),
      body: ListView(children: [
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (BuildContext context, int i) {
            return Container(
              height: double.infinity,
              padding: EdgeInsets.all(25),
              child: ListTile(
                isThreeLine: true,
                trailing: Icon(Icons.pets),
                title: Text("${catBreeds[i]}"),
                subtitle: Text("${catgender[i]}"),
                leading: Image(image: AssetImage("${catImages[i]}")),
              ),
            );
          },
        ),
      ]),
    );
  }
}
