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
        margin: EdgeInsets.only(top: 50, left: 20,right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                ClipRRect
                (
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset("assets/girls.jpg",height: 70,width: 70,fit: BoxFit.cover,))
              ],
            ),
            // Container()
          ],
        ),
      ),
      
    );
  }
}