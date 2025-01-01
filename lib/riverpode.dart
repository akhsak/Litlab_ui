// A StateNotifier that manages the state of the selected index
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:litlab_ui/view/downloads_page.dart';
import 'package:litlab_ui/view/get_premium_page.dart';
import 'package:litlab_ui/view/home_page.dart';
import 'package:litlab_ui/view/my_course.dart';
import 'package:litlab_ui/view/profile_page.dart';

class SelectedIndexNotifier extends StateNotifier<int> {
  SelectedIndexNotifier() : super(0);

  final List<Widget> pages = [
    HomePage(),
    DownloadsPage(),
    GetPremiumPage(),
    MyCoursesPage(),
    ProfilePage(),
  ];

  Widget get selectedPage => pages[state];

  void setIndex(int index) {
    state = index;
  }
}

// A Riverpod provider to manage the SelectedIndexNotifier
final selectedIndexProvider =
    StateNotifierProvider<SelectedIndexNotifier, int>((ref) {
  return SelectedIndexNotifier();
});
