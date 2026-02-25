import 'package:flutter/material.dart';
import 'package:travelappp/services/support_widget.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset("assets/balii.jpg",
            height: MediaQuery.of(  context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.10),
              child: Container(
                margin: EdgeInsets.only(top:30.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
            onPressed: () {
                 Navigator.pop(context);
                    },
                      
                icon: Icon(Icons.arrow_back_outlined,
                
                
                ),
                color: Colors.white,
                ),
                    
                    SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.10),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),),
                        child: const Icon(Icons.favorite_outline),
                     
                    
                    ),

                  
                  ],
                ),



                
              ),
            ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.35),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))  ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Rio de Janeiro", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                     Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Icon( Icons.star_outline, color: Colors.orange, size: 28,),
                          
                          Text("5.0", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                          
                        ],
                      ),
                     )
                      ],
                    ),
                     
                    SizedBox(height: 10),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/brazil.jpg", height: 70, width: 70,fit: BoxFit.cover,)),
                          SizedBox(width: 10),
                          Text("Brazil", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          Spacer(),
                          Text("143 reviews", style: TextStyle(fontSize: 14, color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 10),
                     
                   Text("Lorem ipsum dolor sit amet, consectetur adipiscing elitSed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.", style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 73, 70, 70)),),
                  SizedBox(height: 10),
                  Text("Read more...", style: TextStyle(decoration: TextDecoration.underline,fontSize: 16, color: Colors.blue),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Upcoming tours",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                       Text("See All..", style: TextStyle(decoration: TextDecoration.underline,  fontSize: 16, color: Colors.blue),),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    child:   ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 5, offset: Offset(0, 3))]),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(20),
                                
                                child: Image.asset("assets/france.jpg", height: 100, width: 150, fit: BoxFit.cover)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Iconic France", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                Text("8 days * from \*500/person", style: TextStyle( fontSize: 14, color: Colors.grey),),
                          
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star, color: Colors.orange, size: 20,),
                                    Text("4.5", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                                    SizedBox(width: 5),
                                    Text(" (100 reviews)", style: TextStyle(fontSize: 12, color: Colors.grey),)
                                  ],
                                ),

                            ],
                          ),
                          
                        ],
                      ),)
                    ],
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