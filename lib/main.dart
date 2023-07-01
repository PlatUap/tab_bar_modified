import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
        color: Colors.black,
        border: Border(
          top: BorderSide(
            color: Colors.red,
            width: 5,
          ),
        ),
      ),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.comment),
          text: "Comments",
        ),
        Tab(
          child: Image(
            image: NetworkImage("https://picsum.photos/200"),
          ),
        ),
        Tab(
          icon: Icon(Icons.computer),
          text: "Devices",
        ),
        Tab(
          text: "News",
        ),
      ],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Contoh Tab Bar"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(color: Colors.amber, child: myTabBar),
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ),
              Center(
                child: Text("Tab 3"),
              ),
              Center(
                child: Text("Tab 4"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
