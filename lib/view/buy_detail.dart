import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:litlab_ui/view/cart_page.dart';

class BuyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromARGB(255, 92, 166, 203),
            ),
            child: IconButton(
              icon: Image.asset("assets/menu.png"),
              onPressed: () {},
              iconSize: 20,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(EneftyIcons.notification_outline, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "What You Want\n To Learn Today?",
              style: GoogleFonts.roboto(
                fontSize: screenWidth *
                    0.065, // Adjusting font size based on screen width
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Search Bar
          Padding(
            padding:
                const EdgeInsets.only(right: 35, left: 35, bottom: 35, top: 5),
            child: TextField(
              style: const TextStyle(
                fontSize: 14, // Set a smaller font size for the input text
              ),
              decoration: InputDecoration(
                hintText: 'Search for topics, subjects, or lessons',
                hintStyle: const TextStyle(
                  fontSize: 12, // Set a smaller font size for the hint text
                  color: Colors.grey, // Adjust the color of the hint text
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(
                      left: 8.0), // Adds padding to the left icon
                  child: Icon(Icons.search), // Search icon on the left
                ),
                suffixIcon: const Padding(
                  padding: EdgeInsets.only(
                      right: 8.0), // Adds padding to the right icon
                  child: Icon(Icons.mic), // Mic icon on the right
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
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
                  imageAsset:
                      'assets/image1.jpg', // Replace with real asset paths
                  title: 'Budget Analysis',
                  subtitle: '7 Lessons',
                  onAddToCart: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartPage()),
                    );
                  },
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
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
          color: isSelected
              ? Colors.black
              : const Color.fromARGB(255, 115, 113, 113),
        ),
      ),
      selected: isSelected,
      onSelected: (bool selected) {},
      selectedColor: const Color.fromARGB(255, 92, 166, 203),
      backgroundColor: Colors.grey[300],
    );
  }
}

class LessonCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String subtitle;
  final VoidCallback onAddToCart;
  final double screenWidth;
  final double screenHeight;

  const LessonCard({
    required this.imageAsset,
    required this.title,
    required this.subtitle,
    required this.onAddToCart,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
            child: Image.asset(
              imageAsset,
              width: screenWidth * 0.25,
              height: screenWidth * 0.25,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16.0),
          // Text Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  title,
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),

                // Subtitle
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: screenWidth * 0.035,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8.0),

                // Elevated Buttons Row
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        label: Row(
                          children: [
                            Text(
                              'Add to Cart',
                              style: TextStyle(
                                  fontSize: screenWidth * 0.025,
                                  color: Colors.black),
                            ),
                            Icon(
                              Icons.add_shopping_cart,
                              size: screenWidth * 0.04,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        onPressed: onAddToCart,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 239, 240, 240),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),

                    // Buy Now Button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 92, 166, 203),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.025,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Expanded(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         title,
          //         style: TextStyle(
          //           fontSize: screenWidth * 0.04,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       SizedBox(height: 4.0),
          //       Text(
          //         subtitle,
          //         style: TextStyle(
          //           fontSize: screenWidth * 0.035,
          //           color: Colors.grey,
          //         ),
          //       ),
          //       SizedBox(height: 8.0),
          //       // Elevated Button with icon after text
          //       SizedBox(
          //         height: screenHeight * 0.03,
          //         width: screenWidth * 0.30, // Make the button responsive
          //         child: Row(
          //           children: [
          //             ElevatedButton.icon(
          //               label: Row(
          //                 children: [
          //                   Text(
          //                     'Add to Cart',
          //                     style: TextStyle(
          //                         fontSize: screenWidth * 0.025,
          //                         color: Colors.black),
          //                   ),
          //                   Icon(
          //                     Icons.add_shopping_cart,
          //                     size: screenWidth * 0.04,
          //                     color: Colors.black,
          //                   ),
          //                 ],
          //               ),
          //               onPressed: onAddToCart,
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: const Color.fromARGB(
          //                     255, 239, 240, 240), // Set background color
          //                 shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(
          //                       8), // Slightly rounded corners
          //                 ),
          //               ),
          //             ),
          //             SizedBox(
          //               width: 5,
          //             ),
          //             ElevatedButton(
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: const Color.fromARGB(
          //                     255, 92, 166, 203), // Set background color
          //                 shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(
          //                       8), // Slightly rounded corners
          //                 ),
          //               ),
          //               onPressed: () {},
          //               child: Text(
          //                 'Buy Now',
          //                 style: TextStyle(
          //                   color: Colors.black,
          //                   fontSize: screenWidth * 0.025,
          //                 ),
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
