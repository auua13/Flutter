import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyekpertama/menu/history.dart';
import 'package:proyekpertama/menu/home.dart';
import 'package:proyekpertama/menu/profile.dart';

class MenuDrawerController extends GetxController{

  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }
    List<Widget> pages = [
    HomePage(),
    HistoryPage(),
    ProfilePage(),
  ];
}