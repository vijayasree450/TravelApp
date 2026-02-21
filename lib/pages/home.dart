// import 'dart:ffi';

// import 'package:flutter/material.dart';
// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }


// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFEFEFEF),
//       body: Container(
//         margin: EdgeInsets.only(top: 50, left: 20,right: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
                
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Hello, Vanesa",
//                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black54
                    
//                     ),
//                     ),
//                     Text("Welcome to TripGlide",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Colors.black54),)
                    
//                   ],
//                 ),
//                 ClipRRect
//                 (
//                   borderRadius: BorderRadius.circular(50),
//                   child: Image.asset("assets/girls.jpg",height: 70,width: 70,fit: BoxFit.cover,))
//               ],
//             ),
//             SizedBox(height: 30,),
//             Row(
//               children: [
//                 Expanded(
//                   child:
//                 Container(
//                   // width: MediaQuery.of(context).size.width,
//                   padding: EdgeInsets.only(left: 20),
//                   decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
//                   child: Center(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         border: InputBorder.none,suffixIcon: Icon(Icons.search,color: Colors.black54,),
//                         hintText: "Search location......",
//                         contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 15)
                        
//                       ),
//                     ),
//                   ),
//                 ),
//                 ),
//                 // SizedBox(width: 10,),
//                 // Container(
//                 //   padding: EdgeInsets.all(10),
//                 //   decoration: BoxDecoration(
//                 //     // color: Colors.black,
                    
//                 //     borderRadius: BorderRadius.circular(60),),
//                 //   child: Image.asset(
//                 //     "assets/2.jpg",
//                 //     height: 30,
//                 //     width: 30,
//                 //     color: Colors.white,),
//                 // )
//               ],
//             ),
//             SizedBox(height: 20,),
//             Text("Selected your next trip",
//             style: TextStyle(
//               fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.black54),),

//            SizedBox(height: 120,),
//             Container(
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   Container(
//                     width: 100,
//                     decoration: BoxDecoration(color: Colors.white),
//                     alignment: Alignment.center,
//                     child: 
//                   Text("Asia",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.normal,
//                     color: Colors.black54),),)
//                 ],
//               ))
            
//           ],
//         ),
//       ),
      
//     );
//   }
// }

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
      backgroundColor: const Color(0xFFEFEFEF),
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Top Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hello, Vanesa",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Welcome to TripGlide",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/girls.jpg",
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            /// Search Bar
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.black54,
                        ),
                        hintText: "Search location...",
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

         
            const Text(
              "Select your next trip",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 100,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Asia",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Europe",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "America",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}