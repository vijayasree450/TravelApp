
import 'package:flutter/material.dart';
import 'package:travelappp/pages/first.dart';
import 'package:travelappp/pages/cart.dart';
import 'package:travelappp/pages/fava.dart';
import 'package:travelappp/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool asia = true;
  bool europe = false;
  bool america = false;
  bool isFavorite = false;

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),

      body: currentIndex == 0
          ? buildHomeContent()
          : currentIndex == 1
              ? const FavoritePage()
              : currentIndex == 2
                  ? const CartPage()
                  : const ProfilePage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }


  Widget buildHomeContent() {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// TOP SECTION
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

            /// SEARCH
            Container(
              padding: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  hintText: "Search location...",
                ),
              ),
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

            /// CONTINENT BUTTONS
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                  buildButton("Asia", asia, () {
                    setState(() {
                      asia = true;
                      europe = false;
                      america = false;
                      isFavorite = true;
                    });
                  }),

                  buildButton("Europe", europe, () {
                    setState(() {
                      asia = false;
                      europe = true;
                      america = false;
                      isFavorite = false;
                    });
                  }),

                  buildButton("South America", america, () {
                    setState(() {
                      asia = false;
                      europe = false;
                      america = true;
                      isFavorite = false;
                    });
                  }),
                ],
              ),
            ),

            const SizedBox(height: 30),

            if (asia)
              buildTripCard(
                image: "assets/balii.jpg",
                title: "Bali",
                subtitle: "Indonesia",
              ),

            if (europe)
              buildTripCard(
                image: "assets/france.jpg",
                title: "France",
                subtitle: "Europe",
              ),

            if (america)
              buildTripCard(
                image: "assets/brazil.jpg",
                title: "Brazil",
                subtitle: "South America",
              ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(String text, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: text == "South America" ? 150 : 100,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black54,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget buildTripCard({
    required String image,
    required String title,
    required String subtitle,
  }) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Stack(
          children: [
            Image.asset(
              image,
              height: 400,
              width: 350,
              fit: BoxFit.cover,
            ),

            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black54,
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 15,
              right: 15,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isFavorite = true;
                     currentIndex = 1;
                  });
                },
                  


                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.white,
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 120,
              left: 20,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Positioned(
              bottom: 90,
              left: 20,
              child: Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),

            Positioned(
              bottom: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Detailpage(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "See More",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward, size: 18),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


