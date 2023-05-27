import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "TabBar",
              style: TextStyle(fontSize: 30),
            )),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.chat),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
            ]),
          ),
          body: TabBarView(children: [
            Container(
              child: Center(child: Text("Home Page")),
            ),
            Container(
              child: Center(child: Text("Chat ")),
            ),
            Container(
              child: Center(child: Text("Setting")),
            ),
          ]),
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.teal,
              iconSize: 30,
              selectedLabelStyle: TextStyle(color: Colors.red),
              currentIndex: 2,
              onTap: (value) {
                value = 1;
              
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.arrow_back_ios_new,

                    ),
                    label: "",
                  
                    backgroundColor: Colors.white,
                    
                    ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.square_outlined),
                    label: "",
                    backgroundColor: Colors.white),
                BottomNavigationBarItem(
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                    label: "",
                    backgroundColor: Colors.white),
              ]),
        ),
      ),
    );
  }
}
