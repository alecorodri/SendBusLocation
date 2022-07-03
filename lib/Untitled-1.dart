import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salomon Navigation Bar"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Flutter New Navigation Bar',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        unselectedItemColor: Colors.deepPurple,
        currentIndex: _selectedTab,
        onTap: (position) {
          setState(() {
            _selectedTab = position;
          });
        },
        items: [
          SalomonBottomBarItem(
              selectedColor: Colors.redAccent,
              title: const Text('Profile'),
              icon: const Icon(Icons.person)),
          SalomonBottomBarItem(
              selectedColor: Colors.redAccent,
              title: const Text('Map'),
              icon: const Icon(Icons.map_outlined)),
          SalomonBottomBarItem(
              selectedColor: Colors.redAccent,
              icon: const Icon(Icons.home),
              title: const Text("Home")),
          SalomonBottomBarItem(
              selectedColor: Colors.redAccent,
              title: const Text('Chat'),
              icon: const Icon(Icons.chat_bubble_outline)),
          SalomonBottomBarItem(
              selectedColor: Colors.redAccent,
              title: const Text('Search'),
              icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}
