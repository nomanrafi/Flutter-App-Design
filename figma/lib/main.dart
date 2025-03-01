import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Hello, Noman 👋", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.notifications, color: Colors.black),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCategoryCard("Emotional Balance", "15 min", Colors.black, Colors.white),
                buildCategoryCard("Emotional Balance", "15 min", Colors.grey[300]!, Colors.black),
              ],
            ),
            SizedBox(height: 20),
            Text("Special For You", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            buildSpecialCard("Morning Gratitude", "5 min", "Morning", Colors.blue[100]!, Colors.blue),
            SizedBox(height: 10),
            buildSpecialCard("Serenity Before Sleep", "7 min", "Evening", Colors.grey[200]!, Colors.grey),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "Play"),
          BottomNavigationBarItem(icon: Icon(LucideIcons.library), label: "Library"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
      ),
    );
  }

  Widget buildCategoryCard(String title, String duration, Color bgColor, Color textColor) {
    return Container(
      width: 160,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 16)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(duration, style: TextStyle(color: textColor)),
              Icon(Icons.play_circle_fill, color: textColor),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSpecialCard(String title, String duration, String tag, Color bgColor, Color textColor) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 10),
              Row(
                children: [
                  Chip(label: Text(duration)),
                  SizedBox(width: 8),
                  Chip(label: Text(tag, style: TextStyle(color: textColor))),
                ],
              ),
            ],
          ),
          Icon(Icons.play_circle_fill, color: textColor),
        ],
      ),
    );
  }
}

class LucideIcons {
  static IconData? library;
}
