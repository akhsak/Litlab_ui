import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding:
              const EdgeInsets.all(8.0), // Adjust padding for proper alignment
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color:
                  const Color.fromARGB(255, 71, 123, 149), // Background color
              shape: BoxShape.rectangle, // Circular background
            ),
            child: IconButton(
              icon: Icon(Icons.menu,
                  color: Colors.white), // Icon color is white for contrast
              onPressed: () {},
              iconSize: 20, // Adjust icon size if needed
            ),
          ),
        ),
        title: Text(
          'Cart',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add_shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          // Main content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Lesson Cards
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(16.0),
                  itemCount: 3, // Adjust this based on the number of cards
                  itemBuilder: (context, index) {
                    return LessonCard(
                      imageUrl:
                          'https://via.placeholder.com/150', // Placeholder image URL
                      title: 'Budget Analysis',
                      subtitle: '7 Lessons',
                    );
                  },
                ),
              ),
            ],
          ),

          // "Check Out" button at the bottom
          Positioned(
            bottom: 70,
            left: 150,
            right: 150,
            child: ElevatedButton(
              onPressed: () {
                // Add your checkout logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 71, 123, 149),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: Text(
                'Check Out',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LessonCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const LessonCard({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
            child: Image.network(
              imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16.0),
          // Text Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 8.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
