import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:litlab_ui/controller/riverpode.dart';

class BottomScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);
    final selectedPage = ref.watch(selectedIndexProvider.notifier).selectedPage;

    return Scaffold(
      body: selectedPage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          ref.read(selectedIndexProvider.notifier).setIndex(index);
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black, // Set text color here if needed
        selectedFontSize: 10,
        items: [
          _buildBottomNavigationBarItem(
            iconPath: "assets/home_icon.png",
            label: 'Home',
            isSelected: selectedIndex == 0,
          ),
          _buildBottomNavigationBarItem(
            iconPath: "assets/download_icon.png",
            label: 'Downloads',
            isSelected: selectedIndex == 1,
          ),
          _buildBottomNavigationBarItem(
            iconPath: "assets/premium_icon.png",
            label: 'Get Premium',
            isSelected: selectedIndex == 2,
          ),
          _buildBottomNavigationBarItem(
            iconPath: "assets/book_icon.png",
            label: 'My courses',
            isSelected: selectedIndex == 3,
          ),
          _buildBottomNavigationBarItem(
            iconPath: "assets/profile_icon.png",
            label: 'Profile',
            isSelected: selectedIndex == 4,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required String iconPath,
    required String label,
    required bool isSelected,
  }) {
    return BottomNavigationBarItem(
      icon: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
          color: isSelected
              ? const Color.fromARGB(255, 130, 167, 182)
              : Colors.transparent,
        ),
        padding: const EdgeInsets.all(8.0), // Adjust padding as needed
        child: Image.asset(
          iconPath,
          scale: 13,
        ),
      ),
      label: label,
    );
  }
}
