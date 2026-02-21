import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 70, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello, Vanesa",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black54
                    
                    ),
                    ),
                    Text("Welcome to TripGlide",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Colors.black54),)
                    
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}