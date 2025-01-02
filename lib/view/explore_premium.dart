import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';

class ExplorePremium extends StatelessWidget {
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
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
            PriceCard(
              price: "₹99",
              papers: "1 Paper",
              gradient: null,
              highlighted: false,
            ),
            SizedBox(height: 20),
            PriceCard(
              price: "₹369",
              papers: "6 Paper",
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 96, 173, 189),
                  Color.fromARGB(255, 21, 145, 150)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              highlighted: true,
            ),
            SizedBox(height: 20),
            PriceCard(
              price: "₹129",
              papers: "2 Paper",
              gradient: null,
              highlighted: false,
            ),
          ],
        ),
      ),
    );
  }
}

class PriceCard extends StatelessWidget {
  final String price;
  final String papers;
  final Gradient? gradient;
  final bool highlighted;

  PriceCard({
    required this.price,
    required this.papers,
    this.gradient,
    required this.highlighted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
        color: highlighted ? Colors.grey : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(
              255, 148, 143, 143), // Set the border color to black
          width: 2, // Optional: Set the width of the border
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Column(
        children: [
          Text(
            price,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: highlighted ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(height: 5),
          Text(
            papers,
            style: TextStyle(
              fontSize: 16,
              color: highlighted ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "● Access to High-Quality Notes\n"
            "● Ideal for Exam Preparation\n"
            "● Downloadable and Printable",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: highlighted ? Colors.white : Colors.black,
              height: 1.5,
            ),
          ),
          if (highlighted) SizedBox(height: 20),
          if (highlighted)
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 243, 247, 247),
                foregroundColor: const Color.fromARGB(255, 52, 143, 138),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text("Buy Now"),
            )
        ],
      ),
    );
  }
}
