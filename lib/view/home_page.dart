// // import 'package:flutter/material.dart';
// // import 'package:litlab_ui/view/detail.dart';
// // import 'package:enefty_icons/enefty_icons.dart';

// // class HomePage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.white,
// //         elevation: 0,
// //         leading: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: Container(
// //             decoration: BoxDecoration(
// //               borderRadius: BorderRadius.circular(10),
// //               color: const Color.fromARGB(255, 92, 166, 203),
// //             ),
// //             child: IconButton(
// //               onPressed: () {},
// //               icon: const Icon(EneftyIcons.menu_outline, color: Colors.white),
// //               iconSize: 20,
// //             ),
// //           ),
// //         ),
// //         title: RichText(
// //           text: const TextSpan(
// //             children: [
// //               TextSpan(
// //                 text: 'Welcome to',
// //                 style: TextStyle(
// //                   color: Colors.black,
// //                   fontSize: 18,
// //                   fontWeight: FontWeight.normal,
// //                 ),
// //               ),
// //               TextSpan(
// //                 text: ' LitLab',
// //                 style: TextStyle(
// //                   color: const Color.fromARGB(255, 92, 166, 203),
// //                   fontSize: 18,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //         centerTitle: true,
// //         actions: [
// //           IconButton(
// //             icon: const Icon(EneftyIcons.notification_outline,
// //                 color: Colors.black),
// //             onPressed: () {},
// //           ),
// //         ],
// //       ),
// //       body: SingleChildScrollView(
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Padding(
// //               padding: const EdgeInsets.symmetric(vertical: 0.0),
// //               child: Center(
// //                 child: Text(
// //                   "What You Want\n To Learn Today?",
// //                   style: const TextStyle(
// //                     fontSize: 30,
// //                     fontWeight: FontWeight.bold,
// //                     color: Colors.black,
// //                   ),
// //                   textAlign: TextAlign.center,
// //                 ),
// //               ),
// //             ),
// //             // Search Bar
// //             Padding(
// //               padding: const EdgeInsets.only(
// //                   right: 35, left: 35, bottom: 15, top: 17),
// //               child: TextField(
// //                 style: const TextStyle(
// //                   fontSize: 14, // Set a smaller font size for the input text
// //                 ),
// //                 decoration: InputDecoration(
// //                   hintText: 'Search for topics, subjects, or lessons',
// //                   hintStyle: const TextStyle(
// //                     fontSize: 12, // Set a smaller font size for the hint text
// //                     color: Colors.grey, // Adjust the color of the hint text
// //                   ),
// //                   prefixIcon: const Padding(
// //                     padding: EdgeInsets.only(
// //                         left: 8.0), // Adds padding to the left icon
// //                     child: Icon(Icons.search), // Search icon on the left
// //                   ),
// //                   suffixIcon: const Padding(
// //                     padding: EdgeInsets.only(
// //                         right: 8.0), // Adds padding to the right icon
// //                     child: Icon(Icons.mic), // Mic icon on the right
// //                   ),
// //                   border: OutlineInputBorder(
// //                     borderRadius: BorderRadius.circular(12),
// //                   ),
// //                   contentPadding:
// //                       const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
// //                 ),
// //               ),
// //             ),

// //             // Banner Section
// //             Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 16.0),
// //               child: Container(
// //                 padding: const EdgeInsets.all(35),
// //                 decoration: BoxDecoration(
// //                   color: const Color.fromARGB(255, 92, 166, 203),
// //                   borderRadius: BorderRadius.circular(12),
// //                 ),
// //                 child: Row(
// //                   children: [
// //                     Expanded(
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           const Text(
// //                             'Master Your Grades\n with Lit Lab',
// //                             style: TextStyle(
// //                               fontSize: 16,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.white,
// //                             ),
// //                           ),
// //                           const SizedBox(height: 35),
// //                           ElevatedButton(
// //                             onPressed: () {},
// //                             style: ElevatedButton.styleFrom(
// //                               backgroundColor:
// //                                   const Color.fromARGB(255, 243, 199, 42),
// //                               shape: RoundedRectangleBorder(
// //                                 borderRadius: BorderRadius.circular(
// //                                     12), // Set a rounded border
// //                                 // side: BorderSide(
// //                                 //     color: Colors.black,
// //                                 //     width: 2), // Black border with thickness
// //                               ),
// //                             ),
// //                             child: const Text(
// //                               'Explore Now',
// //                               style: TextStyle(
// //                                   color: Colors.black,
// //                                   fontWeight: FontWeight.bold),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                     Image.asset(
// //                       "assets/phone2.png",
// //                       height: 150,
// //                       width: 100,
// //                       fit: BoxFit.fill,
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //             // Popular Papers Section
// //             SectionTitle(
// //               title: 'Popular Papers',
// //               actionText: 'See all',
// //               onActionTap: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(builder: (context) => DetailsPage()),
// //                 );
// //               },
// //             ),
// //             // Major Category
// //             CategorySection(
// //               title: 'Major',
// //               items: [
// //                 {'title': 'Budget Analysis', 'image': 'assets/image1.jpg'},
// //                 {'title': 'Financial Planning', 'image': 'assets/image2.jpg'},
// //               ],
// //             ),
// //             // Minor Category
// //             CategorySection(
// //               title: 'Minor',
// //               items: [
// //                 {'title': 'Fiscal Policy', 'image': 'assets/image3.jpg'},
// //                 {'title': 'Monetary Policy', 'image': 'assets/image4.jpg'},
// //               ],
// //             ),
// //             // Common Category
// //             CategorySection(
// //               title: 'Common',
// //               items: [
// //                 {'title': 'English', 'image': 'assets/image4.jpg'},
// //                 {'title': 'Arabic', 'image': 'assets/image5.jpg'},
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class SectionTitle extends StatelessWidget {
// //   final String title;
// //   final String actionText;
// //   final VoidCallback onActionTap;

// //   const SectionTitle({
// //     required this.title,
// //     required this.actionText,
// //     required this.onActionTap,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: [
// //           Text(
// //             title,
// //             style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //           ),
// //           TextButton(
// //             onPressed: onActionTap,
// //             child: Text(actionText),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class CategorySection extends StatelessWidget {
// //   final String title;
// //   final List<Map<String, String>> items;

// //   const CategorySection({required this.title, required this.items});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //       children: [
// //         Padding(
// //           padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
// //           child: Text(
// //             title,
// //             style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// //           ),
// //         ),
// //         Padding(
// //           padding: const EdgeInsets.symmetric(horizontal: 16.0),
// //           child: GridView.builder(
// //             shrinkWrap: true,
// //             physics: const NeverScrollableScrollPhysics(),
// //             itemCount: items.length,
// //             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //               crossAxisCount: 2,
// //               crossAxisSpacing: 8,
// //               mainAxisSpacing: 8,
// //               childAspectRatio: 3 / 2,
// //             ),
// //             itemBuilder: (context, index) {
// //               return Card(
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(12),
// //                 ),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     ClipRRect(
// //                       borderRadius: const BorderRadius.vertical(
// //                         top: Radius.circular(12),
// //                       ),
// //                       child: Image.asset(
// //                         items[index]['image']!,
// //                         height: 80,
// //                         width: double.infinity,
// //                         fit: BoxFit.cover,
// //                       ),
// //                     ),
// //                     Padding(
// //                       padding: const EdgeInsets.all(8.0),
// //                       child: Text(
// //                         items[index]['title']!,
// //                         style: const TextStyle(
// //                           fontSize: 14,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               );
// //             },
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:litlab_ui/view/detail.dart';
// import 'package:enefty_icons/enefty_icons.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenWidth = mediaQuery.size.width;
//     final screenHeight = mediaQuery.size.height;

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: const Color.fromARGB(255, 92, 166, 203),
//             ),
//             child: IconButton(
//               onPressed: () {},
//               icon: const Icon(EneftyIcons.menu_outline, color: Colors.white),
//               iconSize: 20,
//             ),
//           ),
//         ),
//         title: RichText(
//           text: const TextSpan(
//             children: [
//               TextSpan(
//                 text: 'Welcome to',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 18,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//               TextSpan(
//                 text: ' LitLab',
//                 style: TextStyle(
//                   color: Color.fromARGB(255, 92, 166, 203),
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: const Icon(EneftyIcons.notification_outline,
//                 color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Title
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
//               child: Center(
//                 child: Text(
//                   "What You Want\n To Learn Today?",
//                   style: TextStyle(
//                     fontSize: screenWidth *
//                         0.075, // Adjusting font size based on screen width
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//             // Search Bar
//             Padding(
//               padding: EdgeInsets.symmetric(
//                   horizontal: screenWidth * 0.1,
//                   vertical: screenHeight * 0.015),
//               child: TextField(
//                 style: TextStyle(
//                   fontSize: screenWidth *
//                       0.035, // Smaller font size for the input text
//                 ),
//                 decoration: InputDecoration(
//                   hintText: 'Search for topics, subjects, or lessons',
//                   hintStyle: TextStyle(
//                     fontSize: screenWidth * 0.03, // Adjust hint text size
//                     color: Colors.grey,
//                   ),
//                   prefixIcon: const Padding(
//                     padding: EdgeInsets.only(left: 8.0),
//                     child: Icon(Icons.search),
//                   ),
//                   suffixIcon: const Padding(
//                     padding: EdgeInsets.only(right: 8.0),
//                     child: Icon(Icons.mic),
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   contentPadding: EdgeInsets.symmetric(
//                       vertical: screenHeight * 0.015,
//                       horizontal: screenWidth * 0.03),
//                 ),
//               ),
//             ),
//             // Banner Section
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
//               child: Container(
//                 padding: EdgeInsets.all(screenWidth * 0.07),
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 92, 166, 203),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             'Master Your Grades\n with Lit Lab',
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                           SizedBox(height: screenHeight * 0.04),
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor:
//                                   const Color.fromARGB(255, 243, 199, 42),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                             ),
//                             child: const Text(
//                               'Explore Now',
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Image.asset(
//                       "assets/phone2.png",
//                       height: screenHeight * 0.2, // Responsive image height
//                       width: screenWidth * 0.25, // Responsive image width
//                       fit: BoxFit.fill,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             // Popular Papers Section
//             SectionTitle(
//               title: 'Popular Papers',
//               actionText: 'See all',
//               onActionTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => DetailsPage()),
//                 );
//               },
//             ),
//             // Major Category
//             CategorySection(
//               title: 'Major',
//               items: [
//                 {'title': 'Budget Analysis', 'image': 'assets/image1.jpg'},
//                 {'title': 'Financial Planning', 'image': 'assets/image2.jpg'},
//               ],
//             ),
//             // Minor Category
//             CategorySection(
//               title: 'Minor',
//               items: [
//                 {'title': 'Fiscal Policy', 'image': 'assets/image3.jpg'},
//                 {'title': 'Monetary Policy', 'image': 'assets/image4.jpg'},
//               ],
//             ),
//             // Common Category
//             CategorySection(
//               title: 'Common',
//               items: [
//                 {'title': 'English', 'image': 'assets/image4.jpg'},
//                 {'title': 'Arabic', 'image': 'assets/image5.jpg'},
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SectionTitle extends StatelessWidget {
//   final String title;
//   final String actionText;
//   final VoidCallback onActionTap;

//   const SectionTitle({
//     required this.title,
//     required this.actionText,
//     required this.onActionTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenWidth = mediaQuery.size.width;

//     return Padding(
//       padding: EdgeInsets.symmetric(
//           horizontal: screenWidth * 0.05, vertical: screenWidth * 0.05),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: TextStyle(
//                 fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold),
//           ),
//           TextButton(
//             onPressed: onActionTap,
//             child: Text(
//               actionText,
//               style: TextStyle(
//                 color: const Color.fromARGB(255, 92, 166, 203),
//                 fontSize: screenWidth * 0.04,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CategorySection extends StatelessWidget {
//   final String title;
//   final List<Map<String, String>> items;

//   const CategorySection({required this.title, required this.items});

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenWidth = mediaQuery.size.width;
//     final screenHeight = mediaQuery.size.height;

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsets.symmetric(
//               horizontal: screenWidth * 0.05, vertical: screenHeight * 0.015),
//           child: Text(
//             title,
//             style: TextStyle(
//                 fontSize: screenWidth * 0.045, fontWeight: FontWeight.bold),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
//           child: GridView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             itemCount: items.length,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 8,
//               mainAxisSpacing: 8,
//               childAspectRatio: 3 / 2,
//             ),
//             itemBuilder: (context, index) {
//               return Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ClipRRect(
//                       borderRadius: const BorderRadius.vertical(
//                         top: Radius.circular(12),
//                       ),
//                       child: Image.asset(
//                         items[index]['image']!,
//                         height: screenHeight * 0.12, // Responsive image height
//                         width: double.infinity,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(screenWidth * 0.02),
//                       child: Text(
//                         items[index]['title']!,
//                         style: TextStyle(
//                           fontSize: screenWidth * 0.035,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:litlab_ui/view/detail.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
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
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 92, 166, 203),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(EneftyIcons.menu_outline, color: Colors.white),
              iconSize: 20,
            ),
          ),
        ),
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Welcome to',
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              TextSpan(
                text: ' LitLab',
                style: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 92, 166, 203),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(EneftyIcons.notification_outline,
                color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
              child: Center(
                child: Text(
                  "What You Want\n To Learn Today?",
                  style: GoogleFonts.roboto(
                    fontSize: screenWidth *
                        0.075, // Adjusting font size based on screen width
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // Search Bar
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.1,
                  vertical: screenHeight * 0.015),
              child: TextField(
                style: GoogleFonts.openSans(
                  fontSize: screenWidth *
                      0.035, // Smaller font size for the input text
                ),
                decoration: InputDecoration(
                  hintText: 'Search for topics, subjects, or lessons',
                  hintStyle: GoogleFonts.abel(
                    fontSize: screenWidth * 0.03, // Adjust hint text size
                    color: Colors.grey,
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.search),
                  ),
                  suffixIcon: const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.mic),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.015,
                      horizontal: screenWidth * 0.03),
                ),
              ),
            ),
            // Banner Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Container(
                padding: EdgeInsets.all(screenWidth * 0.07),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 92, 166, 203),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Master Your Grades\n with Lit Lab',
                            style: GoogleFonts.aBeeZee(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.04),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 243, 199, 42),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              'Explore Now',
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/phone2.png",
                      height: screenHeight * 0.2, // Responsive image height
                      width: screenWidth * 0.25, // Responsive image width
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),
            // Popular Papers Section
            SectionTitle(
              title: 'Popular Papers',
              actionText: 'See all',
              onActionTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsPage()),
                );
              },
            ),
            // Major Category
            CategorySection(
              title: 'Major',
              items: [
                {'title': 'Budget Analysis', 'image': 'assets/image1.jpg'},
                {'title': 'Budget Analysis', 'image': 'assets/image2.jpg'},
              ],
            ),
            // Minor Category
            CategorySection(
              title: 'Minor',
              items: [
                {'title': 'Fiscal Policy', 'image': 'assets/image3.jpg'},
                {'title': 'Monetary Policy', 'image': 'assets/image4.jpg'},
              ],
            ),
            // Common Category
            CategorySection(
              title: 'Common',
              items: [
                {'title': 'English', 'image': 'assets/image4.jpg'},
                {'title': 'Arabic', 'image': 'assets/image5.jpg'},
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final String actionText;
  final VoidCallback onActionTap;

  const SectionTitle({
    required this.title,
    required this.actionText,
    required this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05, vertical: screenWidth * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.04,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextButton(
            onPressed: onActionTap,
            child: Text(
              actionText,
              style: GoogleFonts.poppins(
                color: const Color.fromARGB(255, 92, 166, 203),
                fontSize: screenWidth * 0.04,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategorySection extends StatelessWidget {
  final String title;
  final List<Map<String, String>> items;

  const CategorySection({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05, vertical: screenHeight * 0.01),
          child: Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.045,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.01),
        Container(
          height:
              screenHeight * 0.25, // Increased height to accommodate content
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Container(
                width: screenWidth * 0.5,
                margin: EdgeInsets.only(right: screenWidth * 0.03),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.asset(
                        items[index]['image']!,
                        height: screenHeight * 0.15,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(screenWidth * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min, // Add this
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  items[index]['title']!,
                                  style: GoogleFonts.poppins(
                                    fontSize: screenWidth * 0.027,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black87,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.19,
                                height: screenHeight * 0.03, // Fixed height
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 92, 166, 203),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.01,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Add to cart',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.019,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.018),
                                      Icon(
                                        Icons.add_shopping_cart,
                                        size: screenWidth * 0.03,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.005),
                          Text(
                            '7 Lessons',
                            style: GoogleFonts.poppins(
                              fontSize: screenWidth * 0.025,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 108, 106, 106),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
