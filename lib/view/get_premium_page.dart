import 'package:flutter/material.dart';
import 'package:litlab_ui/view/unlock_premium.dart';

class GetPremiumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              "Unlock Premium Access",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Experience the best learning journey with premium resources and expert support.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
            PremiumPlanCard(
              title: "Diamond",
              price: "₹4999/6 Papers",
              oldPrice: "₹9999/6 Papers",
              description: "Study notes, Recorded Audio & Expert mentorship",
              backgroundColor: Colors.blue[50],
              discountTag: "For you 50% OFF",
            ),
            PremiumPlanCard(
              title: "Silver",
              price: "₹369/6 Papers",
              oldPrice: "₹599/6 Papers",
              description: "Study Notes",
              backgroundColor: Colors.grey[100],
            ),
            PremiumPlanCard(
              title: "Gold",
              price: "₹4999/6 Papers",
              oldPrice: "₹6999/6 Papers",
              description: "Study notes, Recorded video classes",
              backgroundColor: Colors.grey[100],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PremiumAccessPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                "Continue",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PremiumPlanCard extends StatelessWidget {
  final String title;
  final String price;
  final String oldPrice;
  final String description;
  final Color? backgroundColor;
  final String? discountTag;

  PremiumPlanCard({
    required this.title,
    required this.price,
    required this.oldPrice,
    required this.description,
    this.backgroundColor,
    this.discountTag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (discountTag != null)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      discountTag!,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text(
                price,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8),
              Text(
                oldPrice,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
          ),
          SizedBox(height: 8),
          TextButton(
            onPressed: () {},
            child: Text(
              "Explore More",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
