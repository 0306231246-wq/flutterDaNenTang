import 'package:flutter/material.dart';
import 'package:main/CategoriesScreen.dart';
import 'package:main/NewProduct.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE6CD),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "SHOPPING NOW",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Categories()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFe0acc3),
                ),
                child: Text("Products", style: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Newproduct()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFe0acc3),
                ),
                child: Text(
                  "Add new Product",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
