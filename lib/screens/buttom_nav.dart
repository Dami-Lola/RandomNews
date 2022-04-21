import 'package:flutter/material.dart';
import 'package:newsupdate/screens/categoryscreen/category_screen.dart';
import 'package:newsupdate/screens/explorscreen/explore_screen.dart';
import 'package:newsupdate/screens/homescreen/home_screen.dart';
import 'package:newsupdate/screens/profilescreen/profile_screen.dart';

import '../utils/custom_bottom_nav.dart';

class BottomNavigator extends StatefulWidget {
  static const routeName = '/BottomNavigator';

  const BottomNavigator({Key? key}) : super(key: key);

  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {

  int _selectedIndex = 0;

  final List _widgetOptions = [
    const HomeScreen(),
    const ExploreScreen(),
    const CategoryScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _selectedIndex,
          onChange: (index) => _onItemTapped(index),
          children: [
            CustomBottomNavigationItem(
              icon: 'home-svgrepo-com.svg',
            ),
            CustomBottomNavigationItem(
              icon: 'explore-svgrepo-com.svg',
            ),
            CustomBottomNavigationItem(
              icon: 'category-alt-svgrepo-com.svg',
            ),
            CustomBottomNavigationItem(
                icon: 'profile-user-svgrepo-com.svg',
            ),
          ],
        ));
  }
}
