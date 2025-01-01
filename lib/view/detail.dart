import 'package:flutter/material.dart';
import 'package:litlab_ui/view/cart_page.dart';

class DetailsPage extends StatelessWidget {
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
        title: Text(
          'What You Want\n To Learn Today?',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search live classes, recorded, modules',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          // Tabs
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChoiceChipWidget(label: 'Major', isSelected: true),
                ChoiceChipWidget(label: 'Minor', isSelected: false),
                ChoiceChipWidget(label: 'Common', isSelected: false),
              ],
            ),
          ),

          // Lesson Cards
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16.0),
              itemCount: 3, // Adjust this based on the number of cards
              itemBuilder: (context, index) {
                return LessonCard(
                  imageUrl: 'assets/image1.jpg', // Replace with real image URLs
                  title: 'Budget Analysis',
                  subtitle: '7 Lessons',
                  onAddToCart: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ChoiceChipWidget extends StatelessWidget {
  final String label;
  final bool isSelected;

  const ChoiceChipWidget({required this.label, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
      selected: isSelected,
      onSelected: (bool selected) {},
      selectedColor: Colors.blue,
      backgroundColor: Colors.grey[300],
    );
  }
}

class LessonCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final VoidCallback onAddToCart;

  const LessonCard({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.onAddToCart,
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
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  icon: Icon(Icons.add_shopping_cart, size: 16),
                  label: Text('Add to Cart'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
