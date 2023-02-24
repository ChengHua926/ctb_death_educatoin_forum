import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text('APP BAR'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: [
                  Expanded(child: Containerr),
                  Expanded(child: child),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
