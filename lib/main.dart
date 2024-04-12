import 'package:flutter/material.dart';

//This is main function.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/art.jpeg"),
              ),
              const Text(
                "Subhan Ali",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontFamily: "Pacifico",
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                    fontFamily: "SourceSans3",
                    color: Colors.white.withOpacity(0.98),
                    fontSize: 18,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 150.0,
                child: Divider(
                  height: 1,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const IconTextElements(
                icon: Icons.phone,
                text: "+971 55 123 45 67",
              ),
              SizedBox(
                height: 20,
              ),
              const IconTextElements(
                icon: Icons.email,
                text: "alex@gmail.com",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconTextElements extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconTextElements({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
        ),
        title: Text(
          text,
          style: const TextStyle(
              fontSize: 14, color: Colors.teal, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
