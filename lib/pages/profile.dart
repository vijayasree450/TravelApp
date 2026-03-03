import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      body: SingleChildScrollView(
        child: Column(
          children: [

   
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 220,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/9.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

               
                Column(
                  children: [
                    const SizedBox(height: 60),

                  
                    const CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage("assets/gir.jpg"),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Vanesa",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      "Noida, India",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),

            const SizedBox(height: 20),

            // 🔹 Menu Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [

                  buildMenuItem(Icons.person, "Profile & Address"),
                  buildMenuItem(Icons.payment, "Payment Method"),
                  const SizedBox(height: 15),
                  buildMenuItem(Icons.confirmation_number, "My Tickets"),
                  buildMenuItem(Icons.notifications, "Notifications"),
                  buildMenuItem(Icons.lock, "Passwords"),
                  buildMenuItem(Icons.settings, "Settings"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 14),
            ),
          ),
          const Icon(Icons.arrow_forward_ios,
              size: 16, color: Colors.grey),
        ],
      ),
    );
  }
}