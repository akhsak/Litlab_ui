import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:litlab_ui/view/buy_detail.dart';

class PremiumAccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 92, 166, 203),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset("assets/menu.png"),
              iconSize: 20,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(EneftyIcons.notification_outline,
                color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      // type: BottomNavigationBarType.fixed,
      // selectedItemColor: Colors.blue,
      // unselectedItemColor: Colors.grey,
      // items: const [
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.download), label: "Downloads"),
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.diamond), label: "Get Premium"),
      //   BottomNavigationBarItem(icon: Icon(Icons.book), label: "My Courses"),
      //   BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      // ],
      //  ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_outlined,
                      color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  "Unlock Premium Access",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            buildPlanCard(
              context,
              planName: "Silver",
              price: "₹369 / 6 Paper",
              details: [
                "Access to High-Quality Notes",
                "Ideal for Exam Preparation",
                "Downloadable and Printable"
              ],
              buttonColor: const Color.fromARGB(255, 19, 147, 134),
              gradientColors: [Colors.teal.shade400, Colors.teal.shade200],
            ),
            buildPlanCard(
              context,
              planName: "Gold",
              price: "₹1199 / 6 Paper",
              details: [
                "Access to High-Quality Notes",
                "Ideal for Exam Preparation",
                "Downloadable and Printable"
              ],
              buttonColor: const Color.fromARGB(255, 19, 147, 134),
              gradientColors: [Colors.teal.shade400, Colors.teal.shade200],
            ),
            buildPlanCard(
              context,
              planName: "Diamond",
              price: "₹4999 / 6 Paper",
              details: [
                "Access to High-Quality Notes",
                "Ideal for Exam Preparation",
                "Downloadable and Printable"
              ],
              buttonColor: const Color.fromARGB(255, 19, 147, 134),
              gradientColors: [Colors.teal.shade400, Colors.teal.shade200],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPlanCard(
    BuildContext context, {
    required String planName,
    required String price,
    required List<String> details,
    required Color buttonColor,
    required List<Color> gradientColors,
  }) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30, bottom: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey[300]!),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  planName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: details
                      .map(
                        (detail) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(
                            children: [
                              const Icon(Icons.check_circle,
                                  color: Color.fromARGB(255, 19, 147, 134),
                                  size: 18),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  detail,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuyPage()));
                  },
                  child: const Center(
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: gradientColors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 19, 147, 134),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Center(
              child: Text(
                price,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
