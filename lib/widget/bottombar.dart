import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:litlab_ui/riverpode.dart';
import 'package:litlab_ui/view/detail.dart';

class BottomScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the selected index state
    final selectedIndex = ref.watch(selectedIndexProvider);
    final selectedPage = ref.watch(selectedIndexProvider.notifier).selectedPage;

    return Scaffold(
      body: selectedPage, // Display the selected page from the notifier
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          // Update the selected index when the user taps an item
          ref.read(selectedIndexProvider.notifier).setIndex(index);
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.diamond),
            label: 'Get Premium',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'My courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
