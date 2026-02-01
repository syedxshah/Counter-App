import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _inc() {
    setState(() {
      _counter++;
    });
  }

  void _dec() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: Center(
        child: Container(color: Colors.white, child: home()),
      ),
    );
  }

  Widget home() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter APP ",
          style: TextStyle(
            color: Colors.green.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              "Total Count ",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Text(
              _counter.toString(),
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Button color
                    foregroundColor: Colors.white, // Icon/Text color
                    fixedSize: const Size(90, 50), // Width and Height
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8,
                      ), // Subtle rounded corners
                    ),
                    elevation: 5, // The "elevated" shadow effect
                  ),
                  onPressed: () {
                    _inc();
                  },
                  child: const Icon(Icons.add, size: 30), // The + logo
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  style: ElevatedButton.stygit remote add origin https://github.com/syedxshah/Counter-App.gitleFrom(
                    backgroundColor: Colors.red, // Button color
                    foregroundColor: Colors.white, // Icon/Text color
                    fixedSize: const Size(90, 50), // Width and Height
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8,
                      ), // Subtle rounded corners
                    ),
                    elevation: 5, // The "elevated" shadow effect
                  ),
                  onPressed: () {
                    _dec();
                  },
                  child: const Icon(Icons.remove, size: 30), // The + logo
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
